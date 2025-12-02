Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FF7CCFD376
	for <linux-phy@archiver.kernel.org>; Tue,  2 Dec 2025 11:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gN/OMoBLGt9HDywF5DuLhkjOl6GiWTNJdPO6jT+Q7dI=; b=E18suNmLS6f8eO
	NJbtdrbUCHvU09a11f0Qzcu8mTM5ynqNyZX1K/0EB+8w/rj5tXYHHLLaYztM2ESAPW6ukmZp+eTA/
	umaiZ6fLFFY9r4Hqdd07eX/Vvbxa84m3HuUyWOoK71du26gXzyhO8XNDmWHy30goRoUxF8sOMiLmp
	+nUnYjh59/efVny3BVNO3oprUjVGPTql5xwdwgwKN5rY9RcfQ2J1iDOFz9f/btosPBTxiIXp6Msv7
	0PG1HDGuBKvYDPva/1eLG7pfTjX4BFLkUExDS5PYsmJaYKTkN8tr3FL/8Qg7zu4YUFJQAh6O13a3k
	4C4O0k0AagBFB6YdUeVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQOWD-00000005JkY-1hOR;
	Tue, 02 Dec 2025 11:26:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQOWA-00000005Jjp-3u6i
	for linux-phy@lists.infradead.org;
	Tue, 02 Dec 2025 11:26:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A36E84426B;
	Tue,  2 Dec 2025 11:26:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62897C16AAE;
	Tue,  2 Dec 2025 11:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764674762;
	bh=wF+xhIR24LDkqmWVXRlatH2ETEHfWiJ8LLC0c112xeI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jhWetSPZzdVk1RO32Q0RpebGC5o23BH4O+1yfGTh0sFKAy+gd/CLUKpWKBmtuAuu3
	 uRcNtlvPp0uyvw5Av+5wqg8Y7t/VeoxWY4PVhEpyu2pbAKnG82Wxf/6HBFkaL+CGmk
	 vLFf0xdzgvOLWmsy5jOWm1DndeAORZu3+i9YwbY+JzSnseEVbyN5x+4+W405iZt2XK
	 5DfOHaivY+Sfaq2FDR/3N7hi4KKMrDQKzQP7FM08F1PzxvyysOjgPMQ05ikP1xtmqh
	 cS9Qd71XUaLFOvRuuI635s2AlLlsRZpmosNC7ljLMlSyImIX0rQKMQsSj1pHQ7HFCG
	 bt8OAdPhJOLCQ==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>
Cc: linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <20251201084652.422057-1-vkoul@kernel.org>
References: <20251201084652.422057-1-vkoul@kernel.org>
Subject: Re: [PATCH] MAINTAINERS: phy: Add Neil Armstrong as reviewers for
 phy subsystem
Message-Id: <176467476103.101807.18144358414947058428.b4-ty@kernel.org>
Date: Tue, 02 Dec 2025 16:56:01 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_032603_010185_4EA6B0AF 
X-CRM114-Status: UNSURE (   2.93  )
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


On Mon, 01 Dec 2025 14:16:50 +0530, Vinod Koul wrote:
> 


Applied, thanks!

[1/1] MAINTAINERS: phy: Add Neil Armstrong as reviewers for phy subsystem
      commit: 716311dad200edf01a3776b62466571dfd217106

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
