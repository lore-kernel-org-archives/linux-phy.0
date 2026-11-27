Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6D1606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 16:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RfJBCQLU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=g6sPHNo4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hfZAYIBuN4sPPQh/Egpdyar40tzZOFbKnQpatRW7TF4=; b=RfJBCQLUJOfgOBzmpag7BolrI4
	9l/gSl42w1xHZnn2yJ76Jus8/c4rWiP90FF5nprXk47DhZMxX5Vk/sXVlXZ6kzBporijdGBn/YKQM
	4d5/oBTgXYBhho1eBjJXv4QUyi4VIQoki+GVsIRJ6KEwOXpqvmTJ5HRoz2iM9VoT4D9Ae3U29lbqe
	ooTkDS2IAvD5ZhsRExJEphbw4BOOzUnzJLdF34RdfXigXX5EKEBIYIZT04xneZ9SuDubXP3hAJwCj
	xv56Fmo0LhjMDWBIVbNnKEZKBRD41TMmIkh7r2H4Xyt9c7C4TXFa0f9wcA+RD3XkGMFqJe0n+7M8i
	fToMS5nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyRi-0000000Gzrk-31GQ;
	Fri, 27 Nov 2026 16:05:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyRg-0000000Gzno-48UP
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 16:05:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 102126183C;
	Fri, 27 Nov 2026 16:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4559F1F00924;
	Fri, 27 Nov 2026 16:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795795507;
	bh=F4Rb0/Cq2Rzt5GU6gqKqNCgJVrapLl5fEKClVP7hm0E=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=g6sPHNo4sqDsMcavc/lSihYG2yLF5kIrZXuHPiYc9L+uaHXoMtsWeiIkTwTFK2xNx
	 hJgdCyIVhtyQwDwncj3Y0Dln8+l1ba2RVO3KxXiahWw/QcEZ5IAg//pn038IKBG4sF
	 xcbM8KqHCOqoWzAMsutqGNUPwUk4YymC3PYVmi8KtZVgAcHbXqGIRmQSMIqRdCdfCJ
	 oO2u7NOkb2/1MjwworRm6TgAzvnT2iZl9as/8tCKjey+xdT1KDA3boA9wzEAHjH106
	 Bp8EyXEY2IKLLa2BOXN6iLPtJEerxi7YlNrElfrG+0F1Fr1XIPQaBIG/O5s+qXHPsl
	 oYMhBkhR4FBfg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: qcom-uniphy: avoid build failure from duplicate
 PHY_TYPE_PCIE
From: Manivannan Sadhasivam <mani@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
 Arnd Bergmann <arnd@arndb.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Kees Cook <kees+treewide@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20261124105939.1440586-1-arnd@kernel.org>
References: <20261124105939.1440586-1-arnd@kernel.org>
Date: Fri, 27 Nov 2026 21:34:59 +0530
Message-Id: <179579549935.13164.15609895718346972637.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1630; i=mani@kernel.org;
 h=from:subject:message-id; bh=ei5NXO1FgHaiNYGejkUUu+GhsZC8gWHSCnLUJpVp+o4=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCaouapDsFGRhG4kN2bXKaVHoqM3Oj1zJlj5mj
 CXrmYYm2p6JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmqLgAKCRBVnxHm/pHO
 9YwnB/0WfkfQfUsHQmyPOFHJKmGS6xJvkpP2LOZeK6+9CljJykwzaCJ3gWsuZG4jIJByyrANlwl
 vWrofvIe9KUZp01xcLwcHZVxRF802zjrhE5qg7KTtJPve6PFMt4kFClzNx6M5+djjoUkwD3g/vQ
 jCKSkgZs2j4QXWEm/pRs0DUsNMLqOhd9tTpYMkezxQXi7jtS+bbHZcNGriqQLniQPL7sTaNRppM
 1uBX3jTXEq87dQv92T+1MlqQKZffAYkaBBWr4buK0ACK9uEIDJMY9uda1QGYyZrZnohrYxgaczo
 xeZ4TYLFEKOw/i6Be4VuTpUR6avZPIziphTVyKd1vaCapQVs
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-24 11:59 +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Both the DT-binding and the driver define a PHY_TYPE_PCIE constant,
> which clashes at compile time:
> 
> In file included from include/linux/phy/phy.h:25,
>                  from drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:15:
> include/dt-bindings/phy/phy.h:15:33: error: expected identifier before numeric constant
>    15 | #define PHY_TYPE_PCIE           2
>       |                                 ^
> drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:47:9: note: in expansion of macro 'PHY_TYPE_PCIE'
>    47 |         PHY_TYPE_PCIE = 1,
>       |         ^~~~~~~~~~~~~
> drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:127:27: error: 'PHY_TYPE_PCIE_GEN2' undeclared here (not in a function); did you mean 'PHY_TYPE_PCIE'?
>   127 |         .phy_type       = PHY_TYPE_PCIE_GEN2,
>       |                           ^~~~~~~~~~~~~~~~~~
>       |                           PHY_TYPE_PCIE
> drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:135:27: error: 'PHY_TYPE_PCIE_GEN3' undeclared here (not in a function); did you mean 'PHY_TYPE_PCIE'?
>   135 |         .phy_type       = PHY_TYPE_PCIE_GEN3,
>       |                           ^~~~~~~~~~~~~~~~~~
>       |                           PHY_TYPE_PCIE
> 
> Nothing uses the definition in the driver, so just remove it.
> 
> Fixes: b28eecc89399 ("include: linux: phy: Add phy attribute "type" and associated helpers")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
