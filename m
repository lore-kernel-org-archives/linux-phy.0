Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B06DC6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 14:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWYz39jczF4iBBx/Q6iVJJDDDXBVOv/Yytswc9jw3Nw=; b=LGi+vAumCJsQiX
	Vygl5K6e3SgyVJwmASATtocrMb70uiNCZKfTniaGSu1/A/9Y1Gg9ctOgdML+CU9Pz59XSlJZq+quN
	Z4jTfKxhkVRJ9mLe1VeGaeKBJ2+DO64SmnsxI+dGkRL4Bai6FagddGd8uw9DLxESPLbC4XMoOq/v2
	/c4AECxbSvUUWw3bptrRJfPSFykr7pZ3EBicGcnjdfg3gIn++h9BE7UA2ycd2s0+RKPrIPX0pfIbH
	dMch5TcBaJMMSKvcPi8BbcR5E7+GH27ha4o0PQYzyERkD5a9rJoDEbAe/UQP3NaLwpFx4SoFPA+L6
	yma+akB6lBrz/kVUr25g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNVb-00GATu-Iu; Thu, 22 Sep 2022 14:48:59 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obNBS-00G1Gw-4I
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 14:28:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663856882;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mjiuZQ0Gls4tS1X0fH0O8+pLbJc5fMhzaA0TsxRHJvA=;
	b=fiRFuHtkUepBhPq8d3X6cC5WukET/hOLGbUPWZ6FjAblt97DTQkTX0UeJIC+guDU93QWOK
	t/S4Pjb0zzm5WwvSVGRVwpijCQ06NY7hi0SDyzmRgQV5HHCXjXOakJA8iZ4FNWZgbdf52f
	46tSbYyDK+ulG0CKi52goeXtLc/0Uw0=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-486-TvgpGsg-PcGMdroE7wvCeQ-1; Thu, 22 Sep 2022 10:26:25 -0400
X-MC-Unique: TvgpGsg-PcGMdroE7wvCeQ-1
Received: by mail-qv1-f72.google.com with SMTP id nn9-20020a056214358900b004ac7136c9a3so6534372qvb.16
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 07:26:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=mjiuZQ0Gls4tS1X0fH0O8+pLbJc5fMhzaA0TsxRHJvA=;
        b=UpdacswgSr3uxqEpTQN6ShJtADpMk90zeWscxZ2aa9zcZ4ScNg1ZV7n0v0tNMFkkCI
         jKk2aUlN6KhD/gvbamn4w1W9y0gjzwx0EIObRAosYCTMOE9W7v8gj2BGpJLZJVqWzDgv
         6IxEVGvVkZ0jnsaROEjS9D335r13cRCNr1v75RWg1hwtjeQJvKxyBwtQL7c2Ax5DFsMs
         5aACtP9nhrPHdTzVNMLXEQFAST8QLbpOZcteZTijIkHdrmkGbchOVDGKhBZTBjMhtaqH
         MjzEyIbtXdaoDvupBIdKast3f/oTvnGBBEBJTexntwSGejQA4Vl+H2tkSmLRlY8eJx1M
         ypIQ==
X-Gm-Message-State: ACrzQf0Ho7b6p4XcnMW12nj9gJgMIek4s+fg4a4lSzdoCQzciK5JOBBU
	HydGs3swbNVrTqUxF1M7RXbKNS9exPqNLhXK63Il3GeAm/6do9W9yA68JyTOb5TmffTi115oCat
	9Zmeh1Uk+Kfgqkq9nRfI9XEqIhg==
X-Received: by 2002:a05:622a:3cc:b0:35d:b72:76b1 with SMTP id k12-20020a05622a03cc00b0035d0b7276b1mr3016658qtx.516.1663856785384;
        Thu, 22 Sep 2022 07:26:25 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM69czvr9D1VPTKWRVdwkAL/E0kx3wlxWPZm45/1yKoFgboEIjpjN8xGfZnE5xyBwUIAaMrBoA==
X-Received: by 2002:a05:622a:3cc:b0:35d:b72:76b1 with SMTP id k12-20020a05622a03cc00b0035d0b7276b1mr3016636qtx.516.1663856785167;
        Thu, 22 Sep 2022 07:26:25 -0700 (PDT)
Received: from halaneylaptop ([2600:1700:1ff0:d0e0::46])
        by smtp.gmail.com with ESMTPSA id u15-20020a05620a0c4f00b006cf19068261sm4159880qki.116.2022.09.22.07.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 07:26:24 -0700 (PDT)
Date: Thu, 22 Sep 2022 09:26:22 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Yuan Can <yuancan@huawei.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@somainline.org,
	kishon@ti.com, vkoul@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 0/7] Use dev_err_probe() to simplify code
Message-ID: <20220922142622.uekkiszvgv2lfrux@halaneylaptop>
References: <20220922111228.36355-1-yuancan@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20220922111228.36355-1-yuancan@huawei.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_072810_329425_72CC4A02 
X-CRM114-Status: UNSURE (   9.96  )
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

On Thu, Sep 22, 2022 at 11:12:21AM +0000, Yuan Can wrote:
> This series simplify the error handling in probe function by
> switching from dev_err() to dev_err_probe().
> 
> Yuan Can (7):
>   phy: qcom-qmp-combo: Use dev_err_probe() to simplify code
>   phy: qcom-qmp-pcie-msm8996: Use dev_err_probe() to simplify code
>   phy: qcom-qmp-pcie: Use dev_err_probe() to simplify code
>   phy: qcom-qmp-ufs: Use dev_err_probe() to simplify code
>   phy: qcom-qmp-usb: Use dev_err_probe() to simplify code
>   phy: qcom-qusb2: Use dev_err_probe() to simplify code
>   phy: qcom-snps: Use dev_err_probe() to simplify code
> 
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 21 +++++----------
>  .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |  9 +++----
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  9 +++----
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  9 +++----
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  9 +++----
>  drivers/phy/qualcomm/phy-qcom-qusb2.c         | 27 +++++++------------
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 18 +++++--------
>  7 files changed, 34 insertions(+), 68 deletions(-)
> 
> -- 
> 2.17.1
> 

The whole series looks good to me:

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
