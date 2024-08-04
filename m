Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8094EC3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 17:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5fAat9vfhDu7KFOP0qsMDu44ipWCUcjm9DC0wV96nU=; b=btGjTaN8RMu4jZ
	N01/utDSJld9NMXC2Zx46ksi+eRwLvErNFWBhGhU7GQDdAF+QaajVju9CeMi1DAPdvZw2e4Od/djv
	DrZpgPVnORA/c1qe7nnbMdjsO+NNOKK5aszt+hJn6mt2NN4XHYjnw3q3mAH4LLoBitS75VSrM+avn
	/NVgtoNdbGPYOFX86OX+16DsxCcpzyZ8D0OXFVHU5Q0rlKpPu0Y1NB+3DewXTcVklJ6zKYbQ84ZBz
	kkcBC1Id9tga8Ylgh0ohyO23lBcu/rNOF0MvRErSaW5ANnHqZZqbw1+ADTDVP1f6SMXj3zbo2AYiW
	qJQoVNt2nGVBvkEzEeLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safOd-0000000Dihh-0YeG;
	Sun, 04 Aug 2024 17:51:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safOa-0000000DigU-0DnS
	for linux-phy@lists.infradead.org;
	Sun, 04 Aug 2024 17:51:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6392160AF2;
	Sun,  4 Aug 2024 17:51:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33280C4AF0D;
	Sun,  4 Aug 2024 17:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722793910;
	bh=PE3Pv9++oBPBGXCqgqGH5Si2WBcaeZxbHXhQ7WW58AI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=CEVNVT8eMjdegARr5clzAyT+WUgfH1aZjYWKq2K0+n1B+eWw1Mqq1at/3GpO0zgw7
	 me+Y0ikxUK/tGdrCrxFaysYnP6K60xIci94OS7v1DSDHX6asZRI7E0es9jBtzHu0ha
	 B/ti8mgUoXKrJcQdG86df/CkVr1erUZkC5lY4o0+JX5MjOTkDTKqGao5CS/+hkZSJ3
	 KvQexq7QZuPXPh5fZNL8IA4JLwzHZz+JCdz19Mx7/aMXvWy2M8fQ9cWMm4iWx0D+LM
	 4kcgRe++XAUGM7btc5vh4LYJj9EZYnQxUtv42Wgw2c9h/z8iJzBbxxW2jB8VGZXMm6
	 p7lfF0dNM1Oyw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawn.guo@linaro.org>, 
 Jianguo Sun <sunjianguo1@huawei.com>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240703215905.2031038-1-robh@kernel.org>
References: <20240703215905.2031038-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: hisilicon,hi3798cv200-combphy:
 Convert to DT schema
Message-Id: <172279390783.406109.10208814683830391737.b4-ty@kernel.org>
Date: Sun, 04 Aug 2024 23:21:47 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_105152_249784_347078B5 
X-CRM114-Status: UNSURE (   3.95  )
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


On Wed, 03 Jul 2024 15:59:04 -0600, Rob Herring (Arm) wrote:
> Convert the hisilicon,hi3798cv200-combphy binding to DT schema format.
> 
> Drop the example as arm/hisilicon/controller/hi3798cv200-perictrl.yaml
> already contains an example of this binding.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: hisilicon,hi3798cv200-combphy: Convert to DT schema
      commit: dd1051f9329880a0749954e601a5ece9a07f8685

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
