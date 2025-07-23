Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD8CBC83F1A
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b53XGkeRiy04fCs2mKwG5cPL9HSVFap87KYBftL2FSk=; b=Xvg/Rrk6Ds6W3s
	DIGoT9ozqqZcdwnKJCny52KkaUsnI+YR8n+K7UYuaMgSjx01c6xOy93Gh0JhHuh2xJ1yDZKvseeM0
	xaI8cI2Nphj6S11jW369bVYX+6LIMfe+kxgKCHuJqmuZhQAZ503sOMVnd3rwv1hyjyYm+f5pgpZIz
	5xyfZnoM76z33BsLRhjTWNJqit/eA6d+99GbHY3287n4bbqxj7bQZqOZM5zFEeADgWla4R4fe9QRA
	ElteLNDWdIkLZ4ijKy8Jzet9syEjxbQGl9RBM56NQsi6VhroOeGClfHAKfUgjwGes1Aq/QmsXFVWW
	kBQea15oVUHJ7og1bNLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWa1-00000004fEA-2NnE;
	Wed, 23 Jul 2025 10:20:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWIz-00000004bht-3sFY
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:02:35 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 40999EA0;
	Wed, 23 Jul 2025 12:01:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753264913;
	bh=cn1B5ecgw5EKcEgrWy4NTY3Cs+jsoDRUGQ+tJQA8psA=;
	h=From:Subject:Date:To:Cc:From;
	b=vQ5JX17PhTvAw3VNQcA5zF4x7mOEKrQ8xvecVKEGGQLETsv6GnGGfqWFr6mXH8rIm
	 VEQ+lyckNlZ+Vod7bdokR5CNNd5dr1+vtgVpX1BfP3c2dUC6EF8Im9vqk5Ato1HLae
	 yZsY3Z/4X0yDZsZdGNxgHxpQ0xHNZa1uP8iI2nmg=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH 0/2] phy: cdns-dphy: hs-clk improvement and a cleanup
Date: Wed, 23 Jul 2025 13:01:27 +0300
Message-Id: <20250723-cdns-dphy-hs-clk-rate-fix-v1-0-d4539d44cbe7@ideasonboard.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPiygGgC/x2MQQqDMBAAvyJ77oKmhES/Ij2E7GqWlihZEYv4d
 4PHGZg5QbkIKwzNCYV3UVlyhe7VQEwhz4xClcG0xrbOvDFSVqQ1/TEpxt8XS9gYJzkweG9dsM7
 3RFD7tXDVz3v8XNcNYQu04GsAAAA=
X-Change-ID: 20250723-cdns-dphy-hs-clk-rate-fix-a8857a5789dd
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Parth Pancholi <parth.pancholi@toradex.com>, 
 Devarsh Thakkar <devarsht@ti.com>, Francesco Dolcini <francesco@dolcini.it>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, 
 Jayesh Choudhary <j-choudhary@ti.com>
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=790;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=cn1B5ecgw5EKcEgrWy4NTY3Cs+jsoDRUGQ+tJQA8psA=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBogLMyuVGyst63t76wqrfpHRjH6LmaNOkYMQ6XN
 7un641NTMGJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaICzMgAKCRD6PaqMvJYe
 9RqwD/sGgKuFWMNd7hSi7C11CtTdvaN59jQaoxMZKeamstaG68jGFssd2eio+LEpWbONWc+t5Th
 n1PsW/9jnwditdUlYjWTG6t3bGSv5H/54M/QatVKOyuURbL7VOniIesPGmaO55eSU8RDqar/KMl
 tZOefrRVhJZqvgzHk/nP4PbHn7omiclvDRahrcBB6e5XlhGMQp6eXIuodx8rnJKtevnQvte5T4D
 XzJmbLvkFqX5OXJOu56Ma1lHEGBJUm2dPlce0IlqodFwFgVr6pAZLpQaoBkZ++vjQUku36Rf0/m
 SSEH6Aqmm7G35P8vl1+4FnKMrTIUEmlcYJKJxAUv/6qDYaQZCbsi0HH58aNE2AFL1qvanyw3dL3
 LWj2Sc1oRDMNFszQyV1YDkmEUAM8fcSAvEU1JaUtWrTHGmaJ5PmOAQX33r40COEQqQWhntISeD4
 johHcgLQl5ZFJKN/9tvPZaaFK09UtcrrWjiVbnPAdcN4WLk2VttfOtf4oNlEc8LTzhT0pGwTTqA
 +sHTKT7e1A2VCF31nLasLQg4ygbkBxvDNz539H8dU8BI3hT4td0agyP9jugMbihKVCwz+nDivGX
 mwWdfPNL41ilF/Vv4SFMq32oKuBiXKFHmoixpjGPY99A65UpYjtOuCTp90XszorRO1AOz1wr19X
 PLdNJr29m20SvhA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030234_113866_A9D285F6 
X-CRM114-Status: UNSURE (   3.44  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

A cdns-dphy improvement to return the actual hs clock rate, and a
cleanup to remove leftover code.

These were part of a Cadence DSI series:

https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-0-862c841dbe02%40ideasonboard.com/

but are now separately here for easier merging.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
Tomi Valkeinen (2):
      phy: cdns-dphy: Store hs_clk_rate and return it
      phy: cdns-dphy: Remove leftover code

 drivers/phy/cadence/cdns-dphy.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)
---
base-commit: 89be9a83ccf1f88522317ce02f854f30d6115c41
change-id: 20250723-cdns-dphy-hs-clk-rate-fix-a8857a5789dd

Best regards,
-- 
Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
