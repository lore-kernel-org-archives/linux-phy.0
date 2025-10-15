Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F4F0CCD185
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 06:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyqGAlaa0+RwND4Lv5L5sx8xhu8vSTDDGL4o6zq4rkY=; b=m+OfRsef8n4IeZ
	oCtJiDdomWPfjD4aX+fYYsMGUOtQ+L6U5H9S/UVYGC3NI2Q9T7dg4befS/hrhx7YR1vQjd6VT/JuW
	PnQ81tzOtzwCjU9E4RywscQ9X4I2p/7vdG8o94gwBevjl7JlsfgbWIb2eYMLEAYokRVLeyerlegOS
	Djy5bzAa408tc4YL17hoBEuVEC+0IphzZSBRNC7ng/tLBusy3EoN/dtlnE8bBOtp3UFTn8ri3ViM8
	oeofKdhiEsbfc+bF4bCk/H2DPmX34CZ6oglg/xzTFzNrLL+cZIvSUy5LkyZMUNMd+j1x/zLFqOJX7
	Kxaqhtnt/zdjAlht8Ipg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8vT5-00000000ejY-0r7D;
	Wed, 15 Oct 2025 06:58:39 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8vT2-00000000ejA-43K4
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 06:58:38 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3ecdf2b1751so4448714f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 23:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760511515; x=1761116315; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GgRnhCs3Gb02J6lHdQZQG9KVskN5VfKfIDHxr0XwQeA=;
        b=KEhcfsyLDgvpaoZX0AUh03V7/o2vJxFFXasV1nsGgeM+NmkAc5U9ymekXQVspVzi0N
         bTqA4PSpbMfYPjhDevUns/IUPVjU5Et+fj2FWSQbZ2rdWMPaGaalVIeBL7j9LMxNb7al
         OJqHYbh2g5/4roMpebGmYOLRFAbHC1AnNEnTA27BURf5efrRkXDxtFuIKjEQuKnqsECz
         9KMtKL6EE9boED1r8F6/eJ1ESXW24iWmgs3m42YfwErvCq6fA4aZ5SeJYfYOBaYn2d2O
         cjGVrWT0E2PxQ70s/c65g1h6aA0uacLX80e9B299FQpJRedt0wdda6ExtP8geIxe9GVd
         RXRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760511515; x=1761116315;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GgRnhCs3Gb02J6lHdQZQG9KVskN5VfKfIDHxr0XwQeA=;
        b=IlkkNRcZGzEBzEaxZb1d35Htco6tdNaN7hO8k/v0qFM6z0dXH6m5/cQJtannFSFNMd
         HDhLouMrEKK8G5w0Rh5AidmeQA25Y41QGgdEuqRMP930e1epuJhldM3L1Iyi/ey33Vg8
         WG153EgtTKyj28jwXU6D2Zkm2wBJ5wcYoW84lkbgDoKqlHOPU/FYVp8tLsVzUojw25z8
         E0tpfbKi6MQtrnK8OO4/os2gC07s+fklRHn2kk8AqizhkUo4XabD/48hhRcyc7/ij9Qz
         B8JCk04SZKAbsKzCr/F0Cp4oBB3RQPAMK5/lfIptO8m9Y8HhJBMXPuW4H7i0f2Hln94n
         rqCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFf9zlKouyYsjkWth6NXHksaHNYT1iAEGSPGBFPIuSDRQOK1QuhGQ9EgACN0P95Ou67SkqtLEaXKs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyo81qgMzgCh5wJ+eahRALCEsoIJwEGRjEDofhs/R6ixj+4GgjU
	GZ6MJSyTowrIWq5f0TgFDjMDUnbyVIESyUfQJDcptWi4EBIF/unNxzgXVfSN0CnhMxI=
X-Gm-Gg: ASbGnctVpBGRJAXRUbp9X92TU15QQw1O4NFQTkRXNNtgjuQwb1Thi/A24GgC7ByqTc9
	Jr6/mKMDZ2CWEGwhD0Y8J77iQuduHSW41dbFNejCzSG2vB/pxbAvp9Hbk1HEAVybFQ0+oDdnAAq
	Z88dbhI5s0jRRFKpeOioEwxGu1pR4XrvIIQ3We527w996+gEMEAfN2fuz21vD5qDXx6lB//aP1i
	Dxn0oA+LvkDTLnOZ+kZV34gjqawi73WbUMuw+aaA9SG7antQdZljZTZgitdEIKAXh/uDDq3n8OV
	NjNJDyf083l4lV+EJLyyQQpPFOE+WwD3EUIICdrHxTCguMm9PN1M+DZe9kD4lQmj/9DCa35Jypy
	OIn1DW2+uFw+rb7EtChdQLR0+cOeHSRp5LKC8zKe5IDJqWZOWtkDd
X-Google-Smtp-Source: AGHT+IEllritvV6gUtVnvU1/0n+3EqQhpY1ZhJDfrcQqre3L8Vnk9RNk1LBszLebiaD5fS4LgmqBcw==
X-Received: by 2002:a05:6000:603:b0:401:5ad1:682 with SMTP id ffacd0b85a97d-4266e7bf04fmr18097453f8f.14.1760511514704;
        Tue, 14 Oct 2025 23:58:34 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fab656554sm169458625e9.11.2025.10.14.23.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 23:58:33 -0700 (PDT)
Date: Wed, 15 Oct 2025 09:58:31 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
	Wenbin Yao <wenbin.yao@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	konrad.dybcio@oss.qualcomm.com, Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
Message-ID: <w4kphey3icpiln2sd5ucmxgo7yp72twwtnloi5z7a3r3a63fri@fbebffeibb7p>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
 <20250903-glymur_pcie5-v4-2-c187c2d9d3bd@oss.qualcomm.com>
 <w2r4yh2mgdjytteawyyh6h3kyxy36bnbfbfw4wir7jju7grldx@rypy6qjjy3a3>
 <7dadc4bb-43a1-4d53-bd6a-68ff76f06555@kernel.org>
 <aO797ZyWIrm0jx2y@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aO797ZyWIrm0jx2y@hu-qianyu-lv.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_235837_201869_4D217791 
X-CRM114-Status: GOOD (  15.63  )
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

On 25-10-14 18:50:37, Qiang Yu wrote:
> On Sun, Oct 12, 2025 at 05:01:45AM +0200, Krzysztof Kozlowski wrote:
> > On 11/10/2025 14:15, Abel Vesa wrote:
> > >>  
> > >>  properties:
> > >>    compatible:
> > >> -    const: qcom,pcie-x1e80100
> > >> +    oneOf:
> > >> +      - const: qcom,pcie-x1e80100
> > >> +      - items:
> > >> +          - enum:
> > >> +              - qcom,glymur-pcie
> > >> +          - const: qcom,pcie-x1e80100
> > >>  
> > > 
> > > The cnoc_sf_axi clock is not found on Glymur, at least according to this:
> > > 
> > > https://lore.kernel.org/all/20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com/
> > > 
> > > And dtbs_check reports the following:
> > > 
> > > arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): clock-names: ['aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'noc_aggr'] is too short
> > >         from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
> > > 
> > > One more thing:
> > > 
> > > arch/arm64/boot/dts/qcom/glymur-crd.dtb: pci@1b40000 (qcom,glymur-pcie): max-link-speed: 5 is not one of [1, 2, 3, 4]
> > >         from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
> > > 
> > 
> > So that's another Glymur patch which wasn't ever tested?
> 
> I tested all of these patch and also did dtb checks. That's how I found
> cnoc_sf_axi clock is not required. There was a discussion about whether we
> need to limit max speed to 16 GT and I limited it. I may forget to do dtb
> checks again after changing it to 32 GT. Let me push another patch to fix
> this.

Still, you need to add glymur specific clocks entry then, to fix the schema
w.r.t cnoc_sf_axi not being needed.


Best regards,
Abel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
