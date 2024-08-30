Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB044CA0FFC
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 15:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5WVgQD/imUmsWTfS2j3Ux4XAOY4X9/jAml0OmLeTpI=; b=0O+d8m3urUUJly
	Y32kuNSc4WSHAw9Ph0iYIDHJt1YmbdQszPOJXmuL/tg2UucOqR1rKtkLtI444DOaNupsTgHhNk0/x
	heBU8zXtsbfz7u6nI0hD+xYuUzsC44RjhcoRBRBBoMJ5BtaRj2tK+WddIWyQBaVdnpab/8L7cGKPu
	u8Vwo5PIlEOTwLBv7gJKcdtxLaLAd9KPTXsqT9whPrIA+JP3BDvm0L4WM1GLZsh3cO8CypH6+pfNo
	m7eBzoz4Gq/uoAQpLCWnnWWhSMfcDgm0XCmHeM6CqFpkJzJjMPbvI7k1c+SPyPS7Alfkt4Y1ZHgjw
	IU/wR4qbA7HxD8w/7GPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk39F-00000006iA8-1qky;
	Fri, 30 Aug 2024 15:02:49 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk39B-00000006i9H-3ciC
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 15:02:47 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-6c130ffa0adso19305827b3.3
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 08:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725030164; x=1725634964; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F2e3mmIPFWuSOpfLBsYpWRoU+NPRtJO5EHCOY7Ury58=;
        b=jHHscvpc5A8KzpZHcncHpWf61dXBVvrg1ODzzrFd+ztAVL22c2vH+16wib/LRJD78/
         e6Mhf1IJgcxGjx+JJa61rSXgkN7oTVoVSmLMU09yEeggpAz7EifRyRQcBbcqr8SqT+tO
         H3H0C6A/37vQ9gLN8CaQx/JwiaPGhtjoxIIu+Wk2f4nH649MjISZhn16SWAlT13TwzpU
         hKZETOmy53GoaU5oVv7KlJsxhVSjeCnmsr7DMsJFzZcrmK66HIrADTqE9wuKe/o0Jhdx
         08ugvenOgaiS+63t8l0X/7blH0T2sc2lzmIFt5EDaMeTuDglMnoEbDCHxcwbByYuvH+F
         Y9mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725030164; x=1725634964;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F2e3mmIPFWuSOpfLBsYpWRoU+NPRtJO5EHCOY7Ury58=;
        b=vzccNbUO0zwchN02rWB3pYh/dE+jdWl+vkZHN4sM9keGENETJIeApMHRtfmgwxpBbG
         WhM0FNHdl4rtpaYhsLbr2afAkFED+2QegtUdhD1IH8FQQnqauRubi+yaSQJC/+QwPcer
         H3M2itT1DwQYYsq2b+8IEqaKV41xa4zmhYdiKSO0p/gSu0xENZJAEbCogGs6uL/WglRw
         crHpjrHkj2PdKZYSKqEHzk2iVyiKN18Pv1XErbxX5lhhvetJFhadXXLE2dSPmVGe2QWm
         4B9zPF+51hMP1Bs76JHCpmerAmC4WKSUTeory5oCKFUv9DClXQInxX9ioD8UMhP0HDwS
         lWRw==
X-Forwarded-Encrypted: i=1; AJvYcCWpJjtsPDQ1owl8nQ6qZpSI7VtqBRq50+jpyxlNvHjLlVGUiCYKc0CmgIBW1PGWjo9+6Fyk76+g9Eo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5BTvSW1ggGprVpihMVuDg3dow+7ujY0yd++oaAr3LBvJ9qa4F
	DjN448XyLfCcy1iSgimZMzCeiPjr2OIojKcpOa5bF4bjtexsYf4rIDlZ5VBdLikKmUT8fPKoM1k
	Lgx1pFYXr00vza1+kQhQohOxtlypI13D1lYnHsQ==
X-Google-Smtp-Source: AGHT+IFc//5kL8zjuzX0HATe2aqlD+/GQOHR2GsXykxt0dzQVL6MquQvcDRfkA8Djc2UfS/is6roCbJKiRofIJTKX+E=
X-Received: by 2002:a05:690c:f84:b0:62c:e6c0:e887 with SMTP id
 00721157ae682-6d40d88eabfmr26157167b3.9.1725030164245; Fri, 30 Aug 2024
 08:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
 <20240823-x1e80100-phy-add-gen4x4-v3-1-b7765631ca01@linaro.org>
 <gvx3sdsdxigel3iwu7vgvvgxohvnaqq6suogsqojeumobhwhdk@5qct23m5ncda> <ZtG2dUVkdwBpBbix@hovoldconsulting.com>
In-Reply-To: <ZtG2dUVkdwBpBbix@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 30 Aug 2024 18:02:34 +0300
Message-ID: <CAA8EJpqD1XYbw35oxP4hWutbGs8nRTSwOsBAJcYGos8FBbAHew@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
To: Johan Hovold <johan@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
	Johan Hovold <johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_080245_924968_FB6E92C8 
X-CRM114-Status: GOOD (  18.86  )
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

On Fri, 30 Aug 2024 at 15:09, Johan Hovold <johan@kernel.org> wrote:
>
> On Fri, Aug 30, 2024 at 01:42:10PM +0300, Dmitry Baryshkov wrote:
> > On Fri, Aug 23, 2024 at 10:04:15AM GMT, Abel Vesa wrote:
> > > The sixth PCIe instance on X1E80100 can be used in either 4-lane mode or
> > > 2-lane mode. Document the 4-lane mode as a separate compatible.
> >
> > As the patches were merged, it's too late for this series, but as a
> > note: we should think of a way to describe the PHY configuration without
> > changing the compatibility strings. The hardware stays the same, it's
> > just the number of lanes being wired that changes.
>
> No, this is not about configuration and we need two separate compatibles
> as the two PHY instances are distinct and only one of them can be used
> in 4-lane mode.

Ack, makes sense.

> The mistake was to ever describe pcie6a as 2-lane in the x1e80100 dtsi
> (and possibly also in the ambiguous commit message above). Whether
> pcie6a is used in 4-lane or 2-lane mode is determined by a TCSR
> register.

Yes, I was confused by the commit message. I assumed that the
compatible string is used to switch PHY modes. Had the patchset come
with the DT patch, it would be easier to understand what was going on.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
