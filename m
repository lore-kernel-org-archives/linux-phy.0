Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6153C47088
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 21:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfS/q+6WVxsVF/4Jb1wkckgEivTa3wMnwbOUvRJEY1M=; b=hosUmvqm5RonUo
	fn20zwugWfgPaNqps/DvXKdr21RtBktmwLhWmBwJvIG2PCnr0Wvu9V3Qpvn04kHz4KDbAgF/yciYq
	EtTM45TnU91a4wGXrPCpsiSm2CldGDuJjKGQN4xGY4DCn9u2lCkeUGbvOyoLtn/7ybTFBgFZqjhb/
	Ln7EbVWlPdNmy+ZxeqvXKGohKddHiyvZwLChkFQ+jtJ6z7MfIYYZBtCKj2W46Xoe0vKNAEJe+07OV
	iwDoDZ3GUJdRyjJKMp23j5GTadECk0mcGSZPbKt4wOqGIQZmqgrR01U+xtzq3aWT/D9CWHQ2DPjT4
	yyGkh+oKJKJlnFPmaKjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JHh-00AtdA-B8; Mon, 05 Dec 2022 21:45:57 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JHe-00AtZj-Ie
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 21:45:55 +0000
Received: by mail-lj1-x22a.google.com with SMTP id bn5so15115907ljb.2
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 13:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ho1xT1DNH2hZ7tSFEwwpKWLKb8YR6673F+jub5l0Cqo=;
        b=wRrK0lf09eTZiC9pyj8GTiGPsCo+Q6tzgLrid3OIGKwo14+4+D4SvM4z+lrLd9XqYh
         qoCqPzGN353txXXHMUm6UGuZ3E55BRot1jfwEUvgj9oX1Jjg/p3kC1MGBUhEDKCr2BZn
         4VUK9XLwnVbKHWiSUFlu5b+GBmmMbQqjh94F6qPuQQtGW6ELitCnYVYOG4LuCzEP2VHA
         svsKQtjZcoF6d4P6Wt1AlM0PsSkUSZ71K+u254d1DXNs3HH5XE+fYfX4KsU7rgpeO8E+
         bm+0lPZ8nQ5fauGgm+FLUZ9NSfA2tPfOGSVda4E3+99Sk8+6RaqtbRWurCOwxgQ3d+im
         KHyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ho1xT1DNH2hZ7tSFEwwpKWLKb8YR6673F+jub5l0Cqo=;
        b=FwjP0jlLnNb6qHRKL14EBy3tkKK3PgcgoeXlk/15rxXmglXCI3teprfHaEXwEvSzZX
         PZz/9c9G8JIieSdyZ6yBWIiz+jDqtMDCAn/VuNUxEq3a02g+RCGXVyIW2p4RN65G5yFB
         75iG8BI++bWKsCJij5/5w6Pz2dHxt/wr9FxWdDWgIet3KLWc5jvVAdWU7OwYk+PNJsn+
         zcee5kM5ZblVKC/ulJXEJadnwfsM0GcVglSxGPVQ4vfseuhbXChryFeZ9Kd8dMCQwcRo
         06NcZLDWh1Mip6Wj4yiHImmXRyKtKfd2/xTC2D8BRObzIPxT90wwECpJKVqxMwNzrvR1
         xhJQ==
X-Gm-Message-State: ANoB5plBIxiISCd/xcB4Y19o6EQDmO3DykIH5vG+vmyLM6iIcqlHOFhk
	KLg1iVgY/H0AustWtq2ilJtqEw==
X-Google-Smtp-Source: AA0mqf7MaWgYfZrCFNYu2ixUr978meX9sDkrK7zebK8zQmNU6JMjFYnwbYLOGtgPajOZfLvt0gkdbg==
X-Received: by 2002:a2e:86d2:0:b0:279:df97:e895 with SMTP id n18-20020a2e86d2000000b00279df97e895mr4625724ljj.226.1670276751045;
        Mon, 05 Dec 2022 13:45:51 -0800 (PST)
Received: from [127.0.0.1] ([94.25.229.129])
        by smtp.gmail.com with ESMTPSA id a20-20020a2eb554000000b0027a081bfee9sm216675ljn.43.2022.12.05.13.45.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:45:50 -0800 (PST)
Date: Tue, 06 Dec 2022 00:45:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
CC: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_01/23=5D_phy=3A_qcom-qmp-ufs=3A_Remove?= =?US-ASCII?Q?_=5Ftbl_suffix_from_qmp=5Fphy=5Finit=5Ftbl_definitions?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20221201174328.870152-2-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org> <20221201174328.870152-2-manivannan.sadhasivam@linaro.org>
Message-ID: <BAC8FE14-4964-4E3D-9335-192465B4DF2A@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_134554_654158_D074CCDC 
X-CRM114-Status: UNSURE (   5.64  )
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



On 1 December 2022 20:43:06 GMT+03:00, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
>Following the other QMP PHY drivers like PCIe, let's remove the "_tbl"
>suffix from the qmp_phy_init_tbl definitions. This helps in maintaining
>the uniformity across all of the QMP PHY drivers.
>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>---
> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 146 ++++++++++++------------
> 1 file changed, 73 insertions(+), 73 deletions(-)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
