Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB69FC636CC
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 10:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdjJqiLRfloGOjElPUge1fy6C4SB/qYQQYJPkpwcvVY=; b=M5bkilPLkvB4Y2
	SvgAoxI11FD5mTIEk1RPV4eDIeUugVPNUlq3Znzw3WB+yQbqG6fVMHk47clpC787BwxiEhAojnk+3
	4gikGsJ5UN/UfNDHYHfe6KZgN2I4YwGKVGPpX+JOLNLtNJQ9wITjOvCCYEWTFjYkOcjJz3x4FGm41
	3i/COLNmFP3hudMViwML6ebOg4ARuYIP+gynLFQGs+Wd+0jUcDavALwyBio9OY/is913oBmD7YLDm
	izxy7YjNxV67g2qbQkgU/SViDIMGAdccsf9/cN/yj9Piy6xIWMgGEYEpKEOwrgOmztXMejvY67JSE
	Zq0TXNXxpy6IsGJ2goOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNtQR-001PvD-8w; Fri, 03 Feb 2023 10:36:11 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNtQP-001Pti-9p
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 10:36:10 +0000
Received: by mail-wm1-x335.google.com with SMTP id l37-20020a05600c1d2500b003dfe46a9801so2014766wms.0
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 02:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B/Alxt640yrbBa/XKQU7mj/9+hAa4yXrPlBn7QlwrTE=;
        b=UjMbcFzGrptxieT8o0hY0a98JtOb5i2tKgzNSLNc00SCxbYt/RbwL2n0oavc/67Wki
         NaDqSTrkPlpjAUzlZLYGxtrXVOxw6iFOedrlC1W4FZFBIvq4o7oylRzqr8t4mK3WPQxM
         9+Yg5tkXnHqIf+wjjK6SaOWUmNujCKLWwDIVUMjokI/tm5QPr9eAvPeXN2L2fI0b4naC
         7gCAhJhPJZ1BwLQpQOaIuxcOo8vqCzlkan0H79F6ESArv4JAq3c29OZmVvdTBC5ffow0
         lVthbZ3HSGI+IinbBlShyBximjaEZKjmT8UdtMG+RclwdjK4K+f7vy2FdTvcO3gZ72Fa
         rMYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B/Alxt640yrbBa/XKQU7mj/9+hAa4yXrPlBn7QlwrTE=;
        b=RZJ8Nnc5g4LUj2+myDgubIHhpB58xgGqnbL6kIkzrpgssCedetNw55jPbdTPA938t/
         EFYXs1KNKxUYtmILBV1FenvbvixlUrTiI/7dWx1Ow1cBm6Q+Qvys5+pLQH3TZ7AllNtk
         sM5ZkkoGGBkSjw+cmux+VliNdDdl6SKzR9nTjYJl4J1Fk0MYNinMQuDjoXQFJ1vocVV6
         3fHPRjuWn6D/zqkoE9FPneJG06FmkfZICmJs2YALVT/Xuy7WekAXJV35kUSGAe3f9WYe
         6RYBIW4rDbkAeFXdOP36wv4d4j+6No7bni2I4llt4TV6M/9P0W0EYCjeUt/Oqt1V647n
         2lOQ==
X-Gm-Message-State: AO0yUKWK5IxS05rbF5Hm8SafCvblWWYsN0mM0w59rA4zb+uRgryh8WZt
	6J1LfItaMqWNpIDysunrtu4bTA==
X-Google-Smtp-Source: AK7set9DX2k6HQ89nim3kkE+cfA616Ab/IB497UNILR3ETsNFyXK6hLtrXWaLZGzH0PNLB6MmgDXeg==
X-Received: by 2002:a05:600c:3542:b0:3df:ee00:d230 with SMTP id i2-20020a05600c354200b003dfee00d230mr125428wmq.11.1675420566970;
        Fri, 03 Feb 2023 02:36:06 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id i21-20020a05600c355500b003dc4b4dea31sm2460668wmq.27.2023.02.03.02.36.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 02:36:06 -0800 (PST)
Date: Fri, 3 Feb 2023 12:36:05 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v7 12/12] arm64: dts: qcom: sm8550-mtp: Add PCIe PHYs and
 controllers nodes
Message-ID: <Y9zjlSl8+Dqqc/5z@linaro.org>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-13-abel.vesa@linaro.org>
 <Y9zaT0SA5yahuBoW@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y9zaT0SA5yahuBoW@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_023609_361430_AE900007 
X-CRM114-Status: GOOD (  10.32  )
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

On 23-02-03 10:56:31, Johan Hovold wrote:
> On Fri, Feb 03, 2023 at 10:18:07AM +0200, Abel Vesa wrote:
> > Enable PCIe controllers and PHYs nodes on SM8550 MTP board.
> > 
> > Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> 
> > +&pcie_1_phy_aux_clk {
> > +	clock-frequency = <1000>;
> > +};
> > +
> > +&pcie0 {
> > +	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
> > +	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
> > +
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie0_default_state>;
> > +
> > +	status = "okay";
> > +};
> > +
> > +&pcie0_phy {
> > +	vdda-phy-supply = <&vreg_l1e_0p88>;
> > +	vdda-pll-supply = <&vreg_l3e_1p2>;
> 
> Super nit: add newline for consistency.
> 
> > +	status = "okay";
> > +};
> > +
> > +&pcie1 {
> > +	wake-gpios = <&tlmm 99 GPIO_ACTIVE_HIGH>;
> > +	perst-gpios = <&tlmm 97 GPIO_ACTIVE_LOW>;
> 
> Neither controller needs the new enable gpio?

Nope, none of the controllers need it.

> 
> > +
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie1_default_state>;
> > +
> > +	status = "okay";
> > +};
> > +
> > +&pcie1_phy {
> > +	vdda-phy-supply = <&vreg_l3c_0p91>;
> > +	vdda-pll-supply = <&vreg_l3e_1p2>;
> > +	vdda-qref-supply = <&vreg_l1e_0p88>;
> > +
> > +	status = "okay";
> > +};
> > +
> >  &pm8550_gpios {
> >  	sdc2_card_det_n: sdc2-card-det-state {
> >  		pins = "gpio12";
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
