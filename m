Return-Path: <SRS0=bWLT=NW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15651C432BE
	for <linux-phy@archiver.kernel.org>; Tue, 31 Aug 2021 21:33:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D85C061026
	for <linux-phy@archiver.kernel.org>; Tue, 31 Aug 2021 21:33:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D85C061026
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hq5nJm/kxCRG+UGLpHteSOZzY3yh7T+UWkR5YgOlWXY=; b=TKOnDLBIxGzokY
	QCS/TxrDBtOFovPKZuNkFRNhFLImObYo48VvYSPL27jKb4qQ62jMgr/ro77D4zn6OhvFL7k6+gA+u
	7kgArXUt3o6UIfrvmTLH/dMbZXpSOtJ3bB0mneOV0kawTf++LmpDlA++ZRSDNhX/k9YrJ+kSLIz35
	qRMuXAhb83vi5WyQx34dzduLG+7rAbekU7u8rD5qGbLCRsb+VOEYlRQjWcKMpFZxKRh3aBNC2Sch0
	UOx6w033502pW0cTaBPUdty3o8Gr9LTwajraPihf/O60Pvv/zpwXHz+x3yUxY98wUqvDMCj5jMD6A
	1n4mL0rzUoloUoh7uu9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLBNy-003Ec2-Do; Tue, 31 Aug 2021 21:33:38 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLBNw-003EbK-8o; Tue, 31 Aug 2021 21:33:37 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 107-20020a9d0bf4000000b0051b8be1192fso939029oth.7; 
 Tue, 31 Aug 2021 14:33:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DEpQtIcbExJAxj5xWJXZXM2lHBBB0XQwgkBGvLg9dOE=;
 b=STwzW3aGlClGskTC4R5W5215Xa2e/a76kUNmqER/o1H3Ornh2HJGK+uvQdbwigKnBN
 sGdRYYfDiznngOvyU9cDZLCfKaVphNmfbgmv3bQPpxCad73rRe10P69Rxk75yxeyYVAI
 56+haRyMsn2nK3u1HIZsjPEn1s80ynD5U9h3K8aMfsf78SbhWqepmc2nT4WH1lzqSZBK
 Ho+8gol6QXzOMc3VDq60gF8WdYH3PbG69HSqo2f/Mso08PBP8fq6UR3JjTQImgEBwEjt
 CBOqUIfbPOEa5TeyI7jYWRn6dCK9sl19W2MnMePAt5RfX7c0/j1aQTGX9HJQajS4YlWO
 I/bQ==
X-Gm-Message-State: AOAM530xkQ4Egm2kf9vFWXeHWVPhUKMVENqCqGsdUZZZI2Dd4NB21UQ7
 mWuFB6HPH1iBhM4Qws8dwA==
X-Google-Smtp-Source: ABdhPJxGqyVnBtagDTjCeybHyJZZcO2XDDl1qVwChkvfIfIOVQCqHzcY9vD9BRXlCYPbqdWGaP7XtA==
X-Received: by 2002:a9d:2782:: with SMTP id c2mr25865678otb.323.1630445613196; 
 Tue, 31 Aug 2021 14:33:33 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 186sm3929809ood.39.2021.08.31.14.33.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 14:33:32 -0700 (PDT)
Received: (nullmailer pid 682925 invoked by uid 1000);
 Tue, 31 Aug 2021 21:33:32 -0000
Date: Tue, 31 Aug 2021 16:33:32 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-phy@lists.infradead.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org,
 kishon@ti.com, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip: remove usb-phy fallback
 string for rk3066a/rk3188
Message-ID: <YS6gLG+M4dP+rkl6@robh.at.kernel.org>
References: <20210828111218.10026-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210828111218.10026-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_143336_359113_2D5038F4 
X-CRM114-Status: GOOD (  12.12  )
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

On Sat, 28 Aug 2021 13:12:17 +0200, Johan Jonker wrote:
> With the conversion of rockchip-usb-phy.yaml a long time used fallback
> string for rk3066a/rk3188 was added. The linux driver doesn't do much with
> the GRF phy address range, however the u-boot driver rockchip_usb2_phy.c
> does. The bits in GRF_UOC0_CON2 for rk3066a/rk3188 and rk3288 for example
> don't match. Remove the usb-phy fallback string for rk3066a/rk3188
> to prevent possible strange side effects.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/phy/rockchip-usb-phy.yaml     | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
