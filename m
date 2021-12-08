Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3869DC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 16:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRs6yOP3zIX9p+ErB1ujYLJLA9vWdp1DA5lK+8wq87w=; b=P6hNXoJ0SwbKdb
	BzQpq9oCznig2LmsJTDzk+45zxVnaDeMQtXi1LlYbUTowh0Ax3e6B4X3HE4Q7G4kgE/QCh4/s2wMK
	D6r/nkq7hfQ8BtZBVhg0kHcag2XYa5dVK4D5rZOOezXy4Cs99H7mEJCUvg2zcA5JsFD8MMtCErptH
	wP8oi+B4Q1ulV0PBtvemkeTB1AEPTm1CleRfPgOX6nK6Ks4nI0mPLRceg99GbsK1L25urc3GFW4Ib
	Vn3gIOjeYPUr9q19/AfcgeMTBWgcpNwakPPcj6BXW4Gcq3dGKAYUVltiv395UagDw+3vDcfyDSjNL
	RP6QrSNsOVDnHZu61SYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muznC-00DZNB-MZ; Wed, 08 Dec 2021 16:27:42 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muzn9-00DZM3-N7
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 16:27:41 +0000
Received: by mail-oi1-x22e.google.com with SMTP id o4so4760708oia.10
 for <linux-phy@lists.infradead.org>; Wed, 08 Dec 2021 08:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0fAvDAwGpb762D3N/F1VLQfiE3umHXccn2rzhXlp0Ls=;
 b=EEKwi1Fw20jkO8Xpm3cAziHmdaBpBVXKz/ESMqULbMZM4gNHi2Zvy/8tFvDv5DYFB7
 w1G+/5pBHSxaRFW4fEyTo62ojvZ5Q7Ql4tFfaODQRnLIX2gLdDt4lae30AhhbohX3WDe
 rMcmNOLW+aeaIhc6UZKOTwy2H1odq2H8bVlUS3BX4ThLao3qLDd5RLD5ok1VTFOgHK8N
 UIS9tl+u++15uA8TmCqtlMOhorp40jCDjZmoDTJ1wJW7+pSZSOm1V1Rl2SYg8ykaP312
 0I4I4WHmmTYI+LMJ67SwHzAqVjhzLT1HVu3Gjfd4bfUA4Blfc1lum2oJmeqO/7Y7Q9X/
 NfQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0fAvDAwGpb762D3N/F1VLQfiE3umHXccn2rzhXlp0Ls=;
 b=HM0IeV1a82FzS0hnQc6E7sdoKCrIRBA4VMCtb0IaddsKOgf9rQiB5/wyby8Bv/bNjD
 e8OEc21La5WgLV89r4KVe5SV+8ihVwjTrB8wLgYCaTrJpCT93o8xibC1Lv+WoTgjvv8r
 05IIYxO8hpcEZOyTmTajGD7sPIAN8OPh1pqS7PwIVgaDAitBBLbT8SPSKLYDWZw0mjii
 si0OiU+Lr45T+D/kaMOun0dcMJCveBQv1nELytaZSxfT+48fdu1yvD+WZH0fTYLfi0Yb
 meB6C2ah0EIfbfbNixNjfIKnQgPo/bOSZyuSftGDc9xf45ahGJD5I6Lr3LFjq47QoknL
 oiCA==
X-Gm-Message-State: AOAM5332bZ+dLbovZaSk1c2k3LTM41aCF/hgtVjt/VG+G6qDWIO3RAs2
 uOPDWXOxD9QJ3ESGauWmiN7XftDVqQKhyg==
X-Google-Smtp-Source: ABdhPJz90quyj/viO/1nla9+Xqqxnquzwkzrm4WXkfrltwO+V5B8UZQX6LgsE8CxCZB5o+hD7puIAQ==
X-Received: by 2002:a05:6808:228c:: with SMTP id
 bo12mr379407oib.93.1638980857561; 
 Wed, 08 Dec 2021 08:27:37 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id bk41sm770522oib.31.2021.12.08.08.27.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 08:27:37 -0800 (PST)
Date: Wed, 8 Dec 2021 08:29:01 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Guo Zhengkui <guozhengkui@vivo.com>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>, kernel <kernel@vivo.com>
Subject: Re: [PATCH] phy: qcom: fix bug: application of sizeof to pointer
Message-ID: <YbDdTYny9VXtmzb7@ripper>
References: <20211207131642.5313-1-guozhengkui@vivo.com>
 <AO6AKgBME5Y4PNQLIg0Wlap9.9.1638889943341.Hmail.guozhengkui@vivo.com.@PFlhOTZLT3luc080NzhjVnhAcmlwcGVyPg==>
 <f0a6ae0e-4a6c-7db5-7924-a957f1a0b70b@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f0a6ae0e-4a6c-7db5-7924-a957f1a0b70b@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_082739_797390_E1607830 
X-CRM114-Status: GOOD (  22.93  )
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

On Tue 07 Dec 22:56 PST 2021, Guo Zhengkui wrote:

> On 2021/12/7 23:13, Bjorn Andersson wrote:
> > On Tue 07 Dec 05:16 PST 2021, Guo Zhengkui wrote:
> > 
> > > Fix following coccicheck error:
> > > ./drivers/phy/qualcomm/phy-qcom-edp.c:574:31-37:
> > > ERROR: application of sizeof to pointer.
> > > 
> > > Use sizeof(*data) instead.
> > > 
> > > Signed-off-by: Guo Zhengkui <guozhengkui@vivo.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > index 17d5653b661d..5fe4eab9cac1 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > @@ -571,7 +571,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
> > >   	struct clk_init_data init = { };
> > >   	int ret;
> > > -	data = devm_kzalloc(edp->dev, sizeof(data), GFP_KERNEL);
> > > +	data = devm_kzalloc(edp->dev, sizeof(*data), GFP_KERNEL);
> > 
> > Ouch, thanks for catching that!
> > 
> > But the clk_hw_onecell_data actually has a variable size array at the
> > end and as you can see further down I store 2 items in that array.
> > 
> > So that sizeof should be struct_size(data, hws, 2)
> > 
> > Would you be willing to update your patch with that?
> > 
> 
> OK, I will commit another patch. Do you mind I add a "Suggested-by" tag of
> your name in the new patch?
> 

I don't mind.

Regards,
Bjorn

> Zhengkui
> 
> > And please add:
> > Fixes: f199223cb490 ("phy: qcom: Introduce new eDP PHY driver")
> > 
> > Regards,
> > Bjorn
> > 
> > >   	if (!data)
> > >   		return -ENOMEM;
> > > -- 
> > > 2.20.1
> > > 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
