Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 875C8C3DA6F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 19:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSENiMwK8t2jy0UTg46OVwhwIEQbrQdofMACFs2uGWI=; b=eDjc/XR5z6XZAq
	wLuDCnElXy+wFPu7yUSlX0VM8quWax6cpB383MKNQDvWXy46ZfLSGqgohRQISfofvZeiDg4agr8sH
	wCap67iP2cuNCFon5ecZRKZ2PNrdPspXoz0OEQ7ztR4OGETy88hhXZ40MP2eXh7E4BI02l8vhkDgl
	XwYSmrucHvqG4ZLOLYvREaa09sxuTXRZO3qS1xW2AmwDstsOj0sChNQtAnrWAltxMqX3lcBC8Zqaj
	JObUldQ8F2mN2o/ioT+NTbtHRLvQA/XWr9iELr4DJoeVPoLVQNdeiCeC/BaqXdjg43PAOhKTfiRvL
	JRLguslhw7gbZA3UQaYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZG4E-003fji-0S;
	Thu, 24 Aug 2023 19:32:30 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZG4A-003fj4-2B
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 19:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692905541;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=aGc9cpVc07Jrpa4m+ZlC2Dqf1SWjc2bcrlw26RbiYEM=;
	b=Isi7ktw2fF9feVmLTrmSlkEzWYVqmgsrlqfHy6ynr1sMRQshZmgw5nZdlDboaDpuP/uKjM
	aibOUdem5n8cO50amhNS+J7Ajb+DVgoANLU+AG3xJNs4eFmW59jdZqHin8ki2Z9R53RGqZ
	s4l0cvSRLCIELE+SD5pARFhBM1R2S8o=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-215-I4IOOxxFNnuepG_aK_1ruw-1; Thu, 24 Aug 2023 15:32:19 -0400
X-MC-Unique: I4IOOxxFNnuepG_aK_1ruw-1
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4108b83c5d9so1365351cf.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 12:32:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692905539; x=1693510339;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aGc9cpVc07Jrpa4m+ZlC2Dqf1SWjc2bcrlw26RbiYEM=;
        b=T5+b+QD33DeeHnT3GqYEbTmHBBKpUfgt9AT2xJfgvdvYByywhvXGwCwIZ2Zrjgfb7C
         1zNjMWTmBzIWtr3qRFMI6rxng4wOEdhPPYGNdIW+XNfKF+szsnK+fIpWka9Ycy+C9EbZ
         Ngcf08fzHoCwCcRIb97EVXgvRaNv2D2os6e44WZITRjEWOHDQzwZk8pTQ61ymKxewewl
         vnJoqvI/LGhKXBj7RzSXKPaAl5L/3CMtfOwyu8N5CvztTpz8cYJCDl+GgCnh8D6Dl7cA
         3RkP11YJklgeD4QFHs9IbdYRzDhYUFSZVeijOML9u3U4q2uob1DcQHbhewlEHdmVyUeE
         uAyQ==
X-Gm-Message-State: AOJu0YxJJqT/q/q6BNVGjiR3KfQRGfr9vo9TT0TVxb1Ont+NByIkAJXU
	WLAYwL96VSS+z4haPipOH6Z5B5OhXoY1fJJSmwuW88fsDeVOQoiELhxX1TWG8XXjxu7Jjsa2Sxj
	jEi4F8NXllOH4zcSSB9CKMLsWdA==
X-Received: by 2002:a05:622a:1487:b0:40c:58a1:cb40 with SMTP id t7-20020a05622a148700b0040c58a1cb40mr20548256qtx.15.1692905539169;
        Thu, 24 Aug 2023 12:32:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdST5BuBuTrnazY9AWTggT5EsX33ppFmfU4jEDIDGm4YECxH/HVy+4/5VKL35ToB2UzdKC0g==
X-Received: by 2002:a05:622a:1487:b0:40c:58a1:cb40 with SMTP id t7-20020a05622a148700b0040c58a1cb40mr20548241qtx.15.1692905538934;
        Thu, 24 Aug 2023 12:32:18 -0700 (PDT)
Received: from fedora ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id w25-20020ac84d19000000b0040f200feb4fsm42063qtv.80.2023.08.24.12.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 12:32:18 -0700 (PDT)
Date: Thu, 24 Aug 2023 15:32:16 -0400
From: Adrien Thierry <athierry@redhat.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Shazad Hussain <quic_shazhuss@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 0/2] phy: qcom-qmp-usb: fix initialization of PCS_USB
Message-ID: <ZOewQCtdAv8LYhww@fedora>
References: <20230823171208.18382-1-athierry@redhat.com>
 <bd0c9cba-41e2-b449-f383-9970d00cb723@linaro.org>
MIME-Version: 1.0
In-Reply-To: <bd0c9cba-41e2-b449-f383-9970d00cb723@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_123226_878454_61E14D9C 
X-CRM114-Status: GOOD (  17.69  )
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

Hi Bryan,

On Thu, Aug 24, 2023 at 10:15:32AM +0100, Bryan O'Donoghue wrote:
> On 23/08/2023 18:12, Adrien Thierry wrote:
> > This series attempts at making sure PCS_USB registers are properly
> > initialized. Please note I don't have access to the qmp phy datasheet and
> > only reasoned from the code, so I appreciate a double check to make sure
> > I'm not messing with the registers.
> > 
> > Adrien Thierry (2):
> >    phy: qcom-qmp-usb: initialize PCS_USB registers
> >    phy: qcom-qmp-usb: split PCS_USB init table for sc8280xp and sa8775p
> > 
> >   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 22 +++++++++++++++++-----
> >   1 file changed, 17 insertions(+), 5 deletions(-)
> > 
> 
> How is this series tested ? What are the before/after results/effects ?
> 

I tested this series on the sa8775p. AFAICT there's no noticeable change
before/after the patch series: lsusb and dmesg output are the same. USB is
still working properly. I don't know what those PCS_USB registers do
exactly on the qmp PHY and I don't have access to docs, so it's hard for
me to tell the impact of them being initialized vs not.

> ---
> bod

Best,
Adrien


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
