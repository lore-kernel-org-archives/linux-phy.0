Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E49FDC25B50
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 10:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/amshba7/D+GjqVhS7SiBe2JC+/eEVJHBwMnRKq2pk=; b=FqJZUL45nIpC6+
	p7PcWqFJpKo9D2h/76R16fPGypQ8zFzlQqfRgQxCr9+BupIXp939jQ2ycPPsdp+zixynWspAnnp9M
	iL0wcdXo5mGvv5UESGYdfLS+xFP3PMIkVLXXu/7RE9Cc/2GUywXplgElAIOHXPm5EOG9aJmS25IUd
	f1yu17HukuuidNxpLo06MRPBxo/3XnEYy4d4x6Miiseb+XIhsghrcS1eOpzdMB9eRmTH9RBp9k69z
	S7FdjssfmK0euB4kOG688zAyirxj9q4lyoUmjq7HLZqAgmBCO/ZVgVz5O0ogi8ej5s/4tmkC5z4YY
	yYcQo6zaJjRZedl8vGZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJuNd-00GtG8-Aq; Mon, 23 Jan 2023 10:48:49 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJuNS-00GtDn-SU
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 10:48:41 +0000
Received: by mail-wr1-x42b.google.com with SMTP id b7so10375999wrt.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 02:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xUVs15KkMYg/lOZfsKh5uaV6K+tz2DAgJfE3k7IQtmk=;
        b=jjD2YKphApLPv1bjx17k+4kKaGTqVyabYxoEYYixuf3A4AvVpRbRfAI9z9agB375x2
         xjUu1dkTCkBdnTHtc9IOGs3ZWvcZQpQdxJSyc7oM3vdhdx0N5Afta9SIQwQVKfjc73ul
         ZYq3u2i+JBZXTJaGpAShOIOweiI0PCAY1v9aFfsncOnl30N1EHyvxBHpVZGUmwiDO5dN
         QvOmb1IVKJp2IgP8SeHkY1WYr9hlvmnA/ynDkISb2JjmKwqjIOLpW3+YGAocsLkESBGo
         Bc/918chw0QhVFAAOzmd8agGeTRoLE1i3kUJdYTUfeukIuAxZM7qecHaOD/X10v+IG5q
         H4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xUVs15KkMYg/lOZfsKh5uaV6K+tz2DAgJfE3k7IQtmk=;
        b=YRsba3EPorfsVBuIOXijf0CToYZkEfzg/Sdmb9+2bES90bh1PU31QCUrQR2ihqpLnz
         xIBDqXzAxM6ADgYGTAbVjDOJmrm6jXvA4/4u2ehtJAAvclnhd28D0phWs0jVAp1Yh9gO
         YjQeG/qR732OC1wCbIx1vv3c8CDR0IYHpRqpdWO44pRY/kJoUWyLk1rBlUACgb84+L/K
         CQWr0ITT+kCAtctVLFRlF8XxL1BNnzUtovosh98ddthTjFDUd7J+fWLuKmsBCNrUnhgJ
         PHGKGs9nKyPPQJxBt0PmapLHl3BEynWSeyGYSD8KTvYQdDUwhDIEw4i2wJB4zyhDi101
         PVCA==
X-Gm-Message-State: AFqh2kp8MN6LTAw/4CW2RSqGUTCjC5JEXZxojwEPdVI3wiITJarwwlsj
	QBl7eFhcSHFHn7XHZe0OxvI8Sg==
X-Google-Smtp-Source: AMrXdXvC9iO/i18vyEk6bT6Inj0bgYpYRMo5UeUgpdPDG3EkaOpRwjaGyVhXg1o7xdSEhq9oPjvFSQ==
X-Received: by 2002:a5d:5c13:0:b0:2bd:d84d:bbc2 with SMTP id cc19-20020a5d5c13000000b002bdd84dbbc2mr22687044wrb.46.1674470917344;
        Mon, 23 Jan 2023 02:48:37 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id q15-20020a5d574f000000b00272c0767b4asm4041803wrw.109.2023.01.23.02.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 02:48:36 -0800 (PST)
Date: Mon, 23 Jan 2023 12:48:35 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 04/10] dt-bindings: phy: qcom,qmp-usb: Document SM8550
 compatible
Message-ID: <Y85mA3limH9u/NHe@linaro.org>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
 <20221116120157.2706810-5-abel.vesa@linaro.org>
 <Y3TpzgQ1JaFs5sNk@hovoldconsulting.com>
 <Y85fOgfjEUBMnWar@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y85fOgfjEUBMnWar@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_024838_965167_A713325C 
X-CRM114-Status: GOOD (  21.00  )
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

On 23-01-23 11:19:38, Johan Hovold wrote:
> On Wed, Nov 16, 2022 at 02:46:54PM +0100, Johan Hovold wrote:
> > On Wed, Nov 16, 2022 at 02:01:51PM +0200, Abel Vesa wrote:
> > > Add the SM8550 compatible to the list.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >  .../devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml       | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > > index 0c6b3ba7346b..cba2a252baf8 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > > @@ -37,6 +37,7 @@ properties:
> > >        - qcom,sm8350-qmp-usb3-phy
> > >        - qcom,sm8350-qmp-usb3-uni-phy
> > >        - qcom,sm8450-qmp-usb3-phy
> > > +      - qcom,sm8550-qmp-usb3-phy
> > 
> > This one too should be based on sc8280xp rather than the legacy binding
> > scheme.
> 
> I can't seem to find a v2 of this one adding a new-style binding for
> sm8550.
> 
> Note that the corresponding dts changes have already been merged:
> 
> 	https://lore.kernel.org/all/20230119004533.1869870-2-abel.vesa@linaro.org/

As we discussed on Friday, I intend to apply the same strategy as
for pcie. I haven't managed to send the v2 for this one yet.
The order is, UFS, PCIe and then USB. Since the patchsets are based
on each other, I'm trying to make sure PCIe is in the proper shape
before moving on to USB.

> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
