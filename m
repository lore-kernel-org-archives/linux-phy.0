Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74A72EB64D0
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 18:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+yRraPWhURokjeqciAu5G61q61LNGEDnXHlaEI2pDs=; b=rfLD5yOUVWeWFT
	mm+HBmqaj1q+ZWjv/Nr3h5dgnuO5HDMPjdr3Kjj6u40pR/0binwg4QO7Gx7HQpmUMaHqDmLTDoQX7
	CR8bUpvl+1y+QDvlewVVoyalqdf7NXUzm3aEZBkLVCrRlB4tU7xv8JE555oXZNLkqSxUehvqaqRUr
	6VBvmfnQKKhPKf6YbnxqjIJovGOtjokxvnUers1/c+5cj2tL5/TrbAxhKWPRzJyHeN45lJoP7sIY4
	1yP9BsAaZJgQpCvzEMtAs/S6zm6uBDawdtUJWPp7oIDFUBJn+8HHn7MTEk4SjD494ZAllyNayCgD0
	XhtxPiOO+x1uthps/NoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q98YU-008oya-0F;
	Tue, 13 Jun 2023 18:15:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q98YQ-008ow2-36
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 18:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686680126;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VMh4CxAaufkupFiXeG/ZZJofgO1Xkx5kTIdymBHMvlM=;
	b=NEp35MjwKa8qHbBKOFkaq2kZ85FUnSnsB9IJuCmxTKTDAu74AlpamT8EHPHF0ZuxU5xAiK
	KXMSClyIeeTMJMPTr0Vb8U4x8OsNsZ0tqPXqChSSipngiTauCVjZ98KKfBfD20jfS+T8jE
	FGv0bXyHswnybJaHx77iTC3efCWVxGA=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-636-Ff3IE4g1MCSZ9T9PMe5OhQ-1; Tue, 13 Jun 2023 14:15:17 -0400
X-MC-Unique: Ff3IE4g1MCSZ9T9PMe5OhQ-1
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-75d6b90f933so186373585a.0
        for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 11:15:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686680112; x=1689272112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VMh4CxAaufkupFiXeG/ZZJofgO1Xkx5kTIdymBHMvlM=;
        b=gcddAFa+mjMpdYOzVLDyE1bkvBppwp036oOqMSzVowhmnRvWjQoQrk8ytA4XNyHTti
         tvwzVFqO7PlgTtguMf26US0MYaZL6Vieiy5ixZdY5IXXdd2r2TbK8E6OZiRfb2JSqVB3
         V+jt/ozZRcbtfZmGJrAbYFecf2EU7360TUPYBBJ3n/dAOY1GAIJC0EI6ABSuAg2ba8SI
         oZzWG+VTsQPwQna7+PQ47OsYHqHl29dKug0aav1P92P5ytRYIcyJoiKXZKml1/21fKEz
         LLVMYGI538H4MJSYjKVUNKEcuV/ACnnSpxcQ9UKPWkwr8pcVN6OrTRufraRrGp0JLADs
         IVGw==
X-Gm-Message-State: AC+VfDxp+X+ajWUc0hfbybAV/KQZC1oS+GNNl2dKDy9c5+NZKjLLR9Jw
	tSQzXPwGBVGtt35enz4aGRRDXzuK/FOouZFHN4N6B3I2iww4hu/FZhmsWWT/HAamDuesWiIkfDd
	Ze/b81rZJuXZH20ul9aKZ9Nv1Fg==
X-Received: by 2002:a05:620a:2791:b0:75d:5321:fa40 with SMTP id g17-20020a05620a279100b0075d5321fa40mr13049277qkp.51.1686680111981;
        Tue, 13 Jun 2023 11:15:11 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5FXQa4iGHaVb03aNKzDgMsYAUueUgnaSI5oJJ062Y4f4KWKzeuDuU7svTdTOE4LRqmwuYETA==
X-Received: by 2002:a05:620a:2791:b0:75d:5321:fa40 with SMTP id g17-20020a05620a279100b0075d5321fa40mr13049260qkp.51.1686680111740;
        Tue, 13 Jun 2023 11:15:11 -0700 (PDT)
Received: from fedora ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id w10-20020ae9e50a000000b0075941df3365sm3726463qkf.52.2023.06.13.11.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 11:15:11 -0700 (PDT)
Date: Tue, 13 Jun 2023 14:15:09 -0400
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Manu Gautam <mgautam@codeaurora.org>,
	Philipp Zabel <pza@pengutronix.de>, Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Wesley Cheng <wcheng@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 0/2] Clock fixes for qcom-snps-femto-v2 PHY driver
Message-ID: <ZIiyLffCbVklU7YV@fedora>
References: <20230605184455.34832-1-athierry@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20230605184455.34832-1-athierry@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_111543_092295_81EDD779 
X-CRM114-Status: GOOD (  12.78  )
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

On Mon, Jun 05, 2023 at 02:44:52PM -0400, Adrien Thierry wrote:
> This series contains a few clock fixes for the qcom-snps-femto-v2 driver:
> - make sure ref_clk is properly enabled
> - add system sleep PM ops to disable the clocks on system suspend
> 
> v1 -> v2
> - keep cfg_ahb clock and use clk_bulk API to handle both cfg_ahb and ref
>   clocks (Bjorn Andersson)
> - add system sleep PM callbacks (Bjorn Andersson)
> - add Link: and Fixes: tag (Andrew Halaney)
> 
> Adrien Thierry (2):
>   phy: qcom-snps-femto-v2: properly enable ref clock
>   phy: qcom-snps-femto-v2: add system sleep PM ops
> 
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 85 +++++++++++++------
>  1 file changed, 59 insertions(+), 26 deletions(-)
> 
> -- 
> 2.40.1
>

Gentle ping Bjorn, is there anything you'd like me to change in a next
revision?

Best,
Adrien


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
