Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8620E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 19:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8f+k4X30nAMn7CmgUIQD5hxvCkfRukWIzG31PuO+Shg=; b=bpipmcOmULvaMQ
	gAgM1ixJ/UsPYlKtajMfaKjwhptZpWx1QGdkQv4w8rVnn0TUaNF2ZP6sa1c5OgJy6D762+tfVd+8f
	5KGcOPViCIsABYqRT4ocrb6z2M34aloDZO6aseEVfSGAmsSV0rxth2wOw37hBejE9Tw6c3bCEPCqp
	oEIDDQ0jrXg6oOrG8TQdcLc39iVMqi3bBO/owHWsEvA+6sYuIJhJ4lHNIsPbe4yOM14g6N+4M4Tfm
	ft2EpUdwjRR7bo4DFK3yx8RXDPeL/RnWBEb6Zx0Z6OBnpNCIsDx0BHLFqinOP8kfJEDLkClv9rYaW
	2UteQD61MdePgV1GZjpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQAf1-0000000Cfgx-1jXG;
	Tue, 24 Dec 2024 19:33:43 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQAey-0000000CfgO-2jhP
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 19:33:42 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-3043e84c687so44991121fa.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 11:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735068818; x=1735673618; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hj5ZQYj6ZfvnBNr/ZwjvBlcO0X3/akFeihZJe9d7b8A=;
        b=pqltA+a5pVqvhNPhVFZMAcaqML2Eq7UyL7s9istDA+pBKkmQsCjCveqaMaLmCDvH7u
         iYh6/2BhV908/Gbw5z8f6EmJISQM52qzRK4eEMmR5ZF9aVozHFV9ywN/2Yhzo/q+1UC2
         isvmF1FrYpzErzxzuDxovnw54C8jRsnss9zVdUADtTjt5laKfFBbUW3PKE8Oj1d5B6Rc
         haGqyNbaD8G6lQyR/ZXKDPyf0d6AyQ1LQY2Z6f+xfUZBlfc3bzV9zIsOLzVKe0+J57sc
         TI/zfW8hXMGCEGyC97ukFJQE5AnMf+Ai9a7L6Lb08Dep1rp0/a2SYHEvNe3W/lKSUgMI
         aSIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735068818; x=1735673618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hj5ZQYj6ZfvnBNr/ZwjvBlcO0X3/akFeihZJe9d7b8A=;
        b=C/ZUyT921AlT73hHzL0r6imbDTygIX0Le8Dtm2SPacOBhW6LSDSVKV19rNFpbGWp8o
         u2Z6Sz+JqanMy5vJZqGd1Ekmk273zxAHHnTLU+LLrUFC7goydaXt4p8FZx4DyusJlY6S
         0PrA+b7a1wrW5eBUkqYhIMikSxQS3Q0heTmg9H5OiLn9a82eFh1ZMMMLymghWH07oyj7
         6ZoDu0toc31+5LTYscmmtIRlE1AxMTvujvCxgW+HX/lbYlKo0nmHRhmd5fXQtVp9eOff
         6sMbjuE/6NtviL2YhRhbYXYM3LdzIJ6NHBJq5+FLR99IflTu3U1esFeIWBz7WiwXfYUB
         vNKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcgkMIG89S88R26c3raCb9G2nFd6UrqSvI77PLqd3KNvvnsDYhikrB2o0QmVqlWh6xwRk1pxSfqfo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1nBpI+aNdNYUBZ9KjoWlEwAlN+4ZhIWD+KRkAfLYf79BzLBj1
	ySzH9kCBAD7xutzhq8n5mBLng0QWsmw/RXXhGm9pFlGr/Y32a3ILiCoxwIDiRDM=
X-Gm-Gg: ASbGnctqJ7+c43uT4eqA8NUQ6RzHun4Z01CIiSMIS2doYbY68q5cxPH65xLeAVMO4v4
	G2zd78JXwIJGBDIoxncFybUhM8sOBsVtGpgo7hj9QU4B3HOdmDqtCIgtAux3w0aLJGuFwhNqDqi
	ik18kJ5rQ+RzsxQzrYrvFfcbexzF1hxfmUf9goAvsRwi3X+f/qtXHHZKIcUaI+ijcHpNd1X38Vs
	4d8AuD435v1D6I4GrhnBjUnizBJxczZSHcFsCwUTBr8Lx6zhI+y6l9IK/B4td4AQAZT65WCbGLv
	qqEsA6U+ri5Bsk1+aTYohBQ2NYlMlXYGeuO3
X-Google-Smtp-Source: AGHT+IEkb0VKMilQU2dWu2ZBHliquu6RNqgoSY7VWxk9u+ibKV61fNt7hOqrfr2SiK3VLvGe0YstxA==
X-Received: by 2002:a05:651c:781:b0:300:3307:389d with SMTP id 38308e7fff4ca-3046858d397mr47101911fa.19.1735068818550;
        Tue, 24 Dec 2024 11:33:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045adad4a8sm17662401fa.68.2024.12.24.11.33.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 11:33:38 -0800 (PST)
Date: Tue, 24 Dec 2024 21:33:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: (subset) [PATCH v3 0/3] Add support for USB controllers on QCS615
Message-ID: <i7gptvn2fitpqypycjhsyjnp63s2w5omx4jtpubylfc3hx3m5l@jbuin5uvxuoc>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
 <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
 <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
 <Z2sJK9g7hiHnPwYA@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z2sJK9g7hiHnPwYA@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_113340_742308_A393E3A8 
X-CRM114-Status: GOOD (  16.31  )
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

On Wed, Dec 25, 2024 at 12:49:07AM +0530, Vinod Koul wrote:
> On 24-12-24, 17:38, Dmitry Baryshkov wrote:
> > On Tue, Dec 24, 2024 at 08:55:18PM +0530, Vinod Koul wrote:
> > > 
> > > On Tue, 24 Dec 2024 14:16:18 +0530, Krishna Kurapati wrote:
> > > > This series aims at enabling USB on QCS615 which has 2 USB controllers.
> > > > The primary controller is SuperSpeed capable and secondary one is
> > > > High Speed only capable. The High Speed Phy is a QUSB2 phy and the
> > > > SuperSpeed Phy is a QMP Uni Phy which supports non-concurrent DP.
> > > > 
> > > > Link to v1:
> > > > https://lore.kernel.org/all/20241014084432.3310114-1-quic_kriskura@quicinc.com/
> > > > 
> > > > [...]
> > > 
> > > Applied, thanks!
> > > 
> > > [2/3] phy: qcom-qusb2: Add support for QCS615
> > >       commit: 8adbf20e05025f588d68fb5b0fbbdab4e9a6f97e
> > 
> > Is there any issue with the two remaining patches?
> 
> Something wrong with b4... I have applied 2 & 3
> Patch 1 should go thru USB tree

Hmm, strange. But then, please excuse my ignorance, do we have bindings
for these two patches?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
