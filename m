Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1E0CC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 09:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXX7RmlFrSctgHZVZIlmzdeyPeqA86Ex0bmKFULT++g=; b=Ya/YirAfNoCqum
	o65uk6/mSnZOlegEzFCb0StvtbsUtt88EpW5ttliIbgvPhz6OdnyPfNNqIOLp71QLXShjUDAW7JG2
	DPBi0bWxZBCqDKyZr2m4bj1gwuYMM3afvHnTn8g2HgKt5j+Dyzjd0BFyyk6VBQBq+jNvNRCsI2skf
	cwXAtfPK7w+6inuvAccyMWxsz9UPg9QkFhnXRqr8v8Kw3WsBNQAM09ZC6OR9K7ryHnQ728tVo4jL6
	PNlZ+Db/97GQ++WuvXmgUoWPyr8pEmIhY9ECn+xmsN3sWlbXNpHt1ZD7G5RWG5Adp/uIQuGgjWwaU
	AP0ZykljgyEy33mqgymQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okjGn-005JLP-54; Tue, 18 Oct 2022 09:52:21 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okjGj-005JFe-Sf
	for linux-phy@lists.infradead.org; Tue, 18 Oct 2022 09:52:19 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-3608b5e634aso131878907b3.6
        for <linux-phy@lists.infradead.org>; Tue, 18 Oct 2022 02:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7yT/863oLdP/+cPaioe/H9gJ2n+mzUsmGJInpfD0fWA=;
        b=vgQUqOGz2jsZ1Ag97hWYKCqaEcyyNysPZOI/dRfJ6TrFps4rny0kAaSp79BDqTodui
         GqepNKcbusjizNFym7FPoWggZhW/DXDilRob9n6dfXJWQr0aKOrpHHBtF6EY71NEHbNB
         9p2MKHDAFw+bVxjQiWHj9HQeMUtSx0mmgC32CoXFPkOadxmdWhh3Xjh+0+RZuxyZN3Jp
         8pCbk0zwZa6/vcz2aOjNaLOqQTH7JUkinENSvYvu9NUkGRAsyHtvuG3FhW11A7+Hy1ko
         JP8+a0iJ7duSX80en8/l3HAFG68od9T78qQlnOANWJBLsyLwMKAJbnha8sQHnh7fsYD2
         Q7ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7yT/863oLdP/+cPaioe/H9gJ2n+mzUsmGJInpfD0fWA=;
        b=ySSsHk0wIuK73LG+bkGiOyCPs/7qCsMYu3aMiCz44Fu0+iSd+gWNtj9pyi0UWgx5Au
         diCUINWa07Ny6CzrGUhGQtH4p3Pz0VnLc125BW7rzBFXtscRCHOzxrLdbkCWQmo01bTB
         EerQW9tXxve9hy4gNCk5IYMP0sOOmF/Bv5DbuoDBV2w7HfibUYdnNnAHzZSuOijVPOce
         s2tn/gz8/LSfUz+mym55y+hcpK/blxaqD4VPSN6Ot0xLXSqQumtOrfVQ0Mjl+tl3qUbd
         XtJBMjwwiK/jrdMkl9+LSHbtpPhbje6RHO5OFBCBSr8/K4gwXLxTrGC5ok73IKwG1lKt
         V0xA==
X-Gm-Message-State: ACrzQf1bip4Hh9RrHlztoxtYbgFMu0i8Z1IVCb2OkVvxjxKFkKe91WgP
	RJfbE45uZeExy4pyxRyoDMeZ8L96CMxmN4Cdler2DQ==
X-Google-Smtp-Source: AMsMyM6aPRNFAUBNNYnUq9oUumpIVdp0vVrV7sCWZbLJfXnCM9jZHBb03NZGJGCh+XUEttlKgdFEbSyv3DhMosN/ToA=
X-Received: by 2002:a0d:d806:0:b0:355:ea3e:cf69 with SMTP id
 a6-20020a0dd806000000b00355ea3ecf69mr1712464ywe.127.1666086735044; Tue, 18
 Oct 2022 02:52:15 -0700 (PDT)
MIME-Version: 1.0
References: <20221017145328.22090-1-johan+linaro@kernel.org> <20221017145328.22090-10-johan+linaro@kernel.org>
In-Reply-To: <20221017145328.22090-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 18 Oct 2022 12:52:03 +0300
Message-ID: <CAA8EJpqSWmy5Z4cmJnsdjMjkmACW7HSi-k5JxZ0gLCeUAWEnxQ@mail.gmail.com>
Subject: Re: [PATCH 09/15] dt-bindings: phy: qcom,qmp-pcie: mark current
 bindings as legacy
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_025217_964372_4DBD07D7 
X-CRM114-Status: GOOD (  19.32  )
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

Hi,

On Mon, 17 Oct 2022 at 17:54, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> The current QMP PCIe PHY bindings are based on the original MSM8996
> binding which provided multiple PHYs per IP block and these in turn were
> described by child nodes.
>
> Later QMP PCIe PHY blocks only provide a single PHY and the remnant
> child node does not really reflect the hardware.
>
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
>
> This is an unnecessary level of detail which has lead to problems when
> later IP blocks using different register layouts have been forced to fit
> the original mould rather than updating the binding. The bindings are
> arguable also incomplete as they only the describe register blocks used
> by the current Linux drivers (e.g. does not include the per lane PCS
> registers).

I'd like to point out that it's not only a problem peculiar to the
PCIe PHYs. Other QMP PHY families also follow the same approach of
separating the serdes into the common part and rx/tx/PCS/whatever into
the PHY subnodes.
For the USB+DP combo PHYs we have to have subnodes, however it would
also be logical to move serdes register to the subnode devices,
leaving only DP_COM in the base node.

That said, I think we should rethink and agree on QMP PHY bindings,
before renaming the bindings. And yes, I think we should also upgrade
older DTs, keeping drivers backwards compatible (for some time?).

> In preparation for adding new bindings for SC8280XP which further
> bindings can be based on, mark the current bindings as "legacy".
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../{qcom,qmp-pcie-phy.yaml => qcom,qmp-pcie-phy-legacy.yaml} | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>  rename Documentation/devicetree/bindings/phy/{qcom,qmp-pcie-phy.yaml => qcom,qmp-pcie-phy-legacy.yaml} (98%)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
