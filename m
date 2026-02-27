Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54477FEFB4F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 13:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0QFndqrfWwAWwOEaSBrK/1IetuQrSaXt6kwSRyuQdXk=; b=xyRT9nEo2gS+17
	cJ/HuuXSLcsJ2E0nA0wlbt2LvfT3uw86KseProY8HqpIij029cESYwFP+ERQHwZ3XlG1KS2y2fKh4
	WEByvXdJo/uyXdZO9VNd7K0lIA1GSbarMGsWBZloD4NVZBUSqAtwGq/TlaYUMHPVmgo/sgtS84ZM2
	xY140upKM6+UpafrXutfvdicUf1Cp3zJr2D5K+SQOxo3MLBCMJGkt12vC7uqEGXakdjWPjnNXk+sg
	VMbqMspkMdYR5ZYj3z/d+US4HiD98Y5bk3tVenzOpNiUagc4I/35GQP8dIMs2iVeURzmc9tSncbSa
	5jN2hfgcczRDoWBKIQBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvyBU-00000008OoB-0FXY;
	Fri, 27 Feb 2026 13:47:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvyBR-00000008OnX-3Tg0;
	Fri, 27 Feb 2026 13:47:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7BFDA403B0;
	Fri, 27 Feb 2026 13:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9428C116C6;
	Fri, 27 Feb 2026 13:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772200029;
	bh=qvJg2b+muPo/7mul4VkBUyfNKIzDq1yjTRVGO539OrM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QXX7N77xOZthaKb8Gix4TD16r8C4jY4cHgaD9obUSckKNbhx0GgUtfYfrcO0m/JLn
	 MVyCCwL41/4WvXKefmz/KXLNEMZyBPIk5QBqo/Qg2hvhUWcIAb9WmVHqgFU0+i0Gav
	 /5uF9OQi06SEHlNBQIdjow7ZyfWnZiVCw3m41Qssd5AxgF3bu/cQ0IaIXSW5+M6583
	 cSHuZ7l6M2EZJBHQlV3ePocvMcSWVl+w27he89xAKKPTroHtX+CLCAEZRDTIoK2yq2
	 0J4iCQJeuHmxgSnz7BGmhHA6yva7BL2i+Ft7TYN+5m7klx2A3UTLFereCE8l+2UcJB
	 GauonCbjkudkw==
Date: Fri, 27 Feb 2026 19:17:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 0/9] net: stmmac: qcom-ethqos: further serdes
 reorganisation
Message-ID: <aaGgWUpM2A5y11Wh@vaman>
References: <aZ66OT9scKipRRu2@shell.armlinux.org.uk>
 <aZ66uXCwGgH7B_A-@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aZ66uXCwGgH7B_A-@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_054709_887192_FC20F3DC 
X-CRM114-Status: GOOD (  12.79  )
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

On 25-02-26, 09:02, Russell King (Oracle) wrote:
> Note: only 8 patches in this series, not 9 as the subject line says,
> as the set_clk_tx_rate() patch became part of the first series.
> 
> On Wed, Feb 25, 2026 at 09:00:41AM +0000, Russell King (Oracle) wrote:
> > This is part 2 of the qcom-ethqos series, part 1 has now been merged.
> > 
> > This part of the series focuses on the generic PHY driver, but these
> > changes have dependencies on the ethernet driver, hence why
> > it will need to go via net-next. Furthermore, subsequent changes
> > depend on these patches.

This lgtm, can we get signed tag so that we can pull this into phy tree
as well

Thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
