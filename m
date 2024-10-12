Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F2EDCF2571
	for <linux-phy@archiver.kernel.org>; Sat, 12 Oct 2024 17:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYCU6TJ+svX8JM5ZWle8d3mFARMbEkFplU8IuWSll9Y=; b=TZ98+orbCJcQo9
	FO6W1DNFJW76JaWsjfGDVddutXMKEaIhFtgTXKW7v9zqvL5s3pjrcQs31KekBaDbxMXW8dWADWOCt
	jbJR0ZDKmdzHfZ1qwgJyv74d09Gw817Ex5toRXsa0FrqYlDFK8WuzK1JDMV+lj7i+PyA9slAUIegd
	VlaKkIUV8IqeptDIROHNGrAnmnVJyt2a2UCA/FpKw/3cPtbjuhuesrxJHqEpBiz3t8ZFXMRZd/uWE
	/8Yohia5swvsv3MtUT4Db6RxIzb5GNApPeC+Rxbtk6h6YWBbEI2M+V2VaEFLspfa/CM8s1cWwzYrI
	kp0o6Z6rC+dB2YaZjhvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szgHY-00000001b4e-3Yf0;
	Sat, 12 Oct 2024 17:52:00 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szgGA-00000001awD-2D0B;
	Sat, 12 Oct 2024 17:50:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C2764A406EC;
	Sat, 12 Oct 2024 17:50:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75775C4CEC6;
	Sat, 12 Oct 2024 17:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728755433;
	bh=q1ravRMh93gOVs4GfZliVA7ooIqV8LEnvGU+TnI3WuQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TvBrI/ozI36dPm9Y8l3gPjdaC0cDl0oXV6OkhAGoDMb756m4qxTaFlWnTtEtVZCup
	 AO/o+S8hgibnYQG81OZ8N1j9eTy1gCrR3E+LMkUKX2qytbCNbBx7sZS3f6T6UrNMbg
	 BDLvizmNOSkQc99ia6C0iNeGTjNzDHaApnG/WT31lHVLpQqI8OAdr6MiY92qpBB4r+
	 qZSR96Hv6CM2bvMcol5HPrBZCz/JBNO5NtvkkTkNx68RlJX+STMz7sWt0lazPohLrs
	 SJFhYWe4PG5CrBw7bH+Eb2LuiVL0AV2Ezm+55V7JHXrWR6EycKBrAUZ3c4badXsCOi
	 tSg+qkCmFqZLA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, thomas.richard@bootlin.com, 
 krzysztof.kozlowski@linaro.org, rogerq@kernel.org, 
 florian.fainelli@broadcom.com, c-vankar@ti.com, afd@ti.com, 
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, srk@ti.com
In-Reply-To: <20241010144845.2555983-1-s-vadapalli@ti.com>
References: <20241010144845.2555983-1-s-vadapalli@ti.com>
Subject: Re: [PATCH] phy: ti: gmii-sel: Enable USXGMII mode for J7200
Message-Id: <172875542906.55946.16970034988760011848.b4-ty@kernel.org>
Date: Sat, 12 Oct 2024 23:20:29 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_105034_665805_ED19629F 
X-CRM114-Status: UNSURE (   3.75  )
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


On Thu, 10 Oct 2024 20:18:45 +0530, Siddharth Vadapalli wrote:
> TI's J7200 SoC supports USXGMII mode with the CPSW5G instance's MAC Port1.
> Add USXGMII mode to the extra_modes member of J7200's SoC data.
> 
> 

Applied, thanks!

[1/1] phy: ti: gmii-sel: Enable USXGMII mode for J7200
      commit: 9e544d46a2d11a0cb8b30d8ad4409c59bc168ce2

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
