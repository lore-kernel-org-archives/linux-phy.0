Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18B7DD2127B
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 08:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCuEJ6RXWyg2zsbrihSgODe7GaZ+O/2QGMvGTP5ZfqE=; b=QTcpNMR0yC5Lvy
	h89NJm3xTcSNOxNz6+I/a5yAIOV2xhFnV3vi1j6oR3QBVcCkbEy6GgIx4GI32c53YXHQ4aXqGP7JE
	OyX0scyMcg7prmm4fahYqctbJQEM0DPVi2iuPtfxMsGspsW1uhNEkbglXzyzMxYKSh+JV550MY6ee
	A1ba+dTsyKGsDBQkeiKrJADt1WE6M0zr2xUNJuLAF20wj45kVipFiqwBJfG62u49YkuuE1Ijhhq9Y
	SzbIfL5tUI1RFbqCooMC5smBiYraHJBYArxuhggqq1WfIj8PFAAgR+b+DF4HDuhqzjf2EbP5IZc1s
	Uw1kgeMhzOkM87Ox00DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1i0B-0000000HR8r-3JIo;
	Fri, 18 Oct 2024 08:06:27 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1i08-0000000HR83-44Gz
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 08:06:26 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e28fd8cdfb8so1702299276.3
        for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 01:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729238784; x=1729843584; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UJxs3TzRvpvh37ncfDE5O/qusWTGJaGSYhsl43ibuBM=;
        b=nMvC2bnljeFY2XU2SX8nDaZp9Zp3HxPWiEZVPmDMK2PiVcZ2N4k6/E4U8TJnCRkFSQ
         LOoQPJRaIkW9YtFR0Cek9bsR+o0thnIjglWdfAvHkeAvnMgcIfS8kzqSSCUnzYffhMxY
         2IY7vLpGSbeeJcEdrayfdqQRdfhrXEos8SzuZql4XlmoSVp9PBiv/i0qlPQzjj2aH0UX
         XJiWegBvLFTIzMPCkk8MkyH+ur++5yJvrqqMFDdSXeob+xX6M39CuIuvzKGt6KflgwRq
         wj/EIJeamehjSduOqaPUAd7R8yPWPJE0GdwjIMxeV5yWCIus90lULOzWZnwvDNNWxAR7
         Zrng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729238784; x=1729843584;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UJxs3TzRvpvh37ncfDE5O/qusWTGJaGSYhsl43ibuBM=;
        b=V0mvl34mNgtGbVz8Co3rNopGzL2RD2aOjXFED8Llc89R9E8mqS895ZZdI0fFdqmv8w
         Vo3L43pYJ6ZW3M5CBfPKwVwx2l3Isznwg0gB2G5//sJbHk64m5B7Dzkvp3OjUrv0wsjT
         Oioix4Do+ShX0iSZ69qpYJXLAX1kKoq2OWN1pPeGC5gb13bPtvWK61R56t4WeTgCLmD7
         n44r/6AnM8zQsgOIRRh6ROWRus4lgGrsf7JaSH9btcajJJ6G70Rj79PERMt+e2xuRLnn
         QCXCydnL1xEqwEcJtqO5ETT1oHYO3IGHppkMUWTFKzigWjRTx6GideFDHgXWPdC4rHUq
         m7eA==
X-Forwarded-Encrypted: i=1; AJvYcCXMerKZRgy0MYyw+ctusdJyMdiXXHd4PrjxKvs6Qe4f4VDsjzzShXWc5YJ3iOEIz5RvuflQTiTbH70=@lists.infradead.org
X-Gm-Message-State: AOJu0YwdhIA0+eZh04ZyRbOzwBB//InVisPNv6B1dundfoX9QXYovk5T
	pntzSQgGmUwY+aoXzJDgAXvafsUTuDIBeXjQBQTsncQFoddZSLXVtvx45CfoR6rTU3g4YdPm+gm
	EoBQ5zDeISbma1u2OOQ9mfAJfhH6hgMf1BK6YFQ==
X-Google-Smtp-Source: AGHT+IG67iA513l+vzvhN59OEZIDnlrhUn8zZVdV7zNIa0MSXy/0JidUuX5/ugr31L6WEem4xZ1pwi6Fky5+yvRHgik=
X-Received: by 2002:a05:690c:690a:b0:6e3:195a:7247 with SMTP id
 00721157ae682-6e5bfc9c423mr11743617b3.46.1729238783780; Fri, 18 Oct 2024
 01:06:23 -0700 (PDT)
MIME-Version: 1.0
References: <20241017130701.3301785-1-quic_kriskura@quicinc.com>
 <20241017130701.3301785-6-quic_kriskura@quicinc.com> <CAA8EJprcOU6qeJvHH+MVoPnQ+mGcos=pDOVBSeSUfBGw-KR6tA@mail.gmail.com>
 <aa68e5ab-86a6-430e-92d8-ed89b4eb37f7@quicinc.com>
In-Reply-To: <aa68e5ab-86a6-430e-92d8-ed89b4eb37f7@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 18 Oct 2024 11:06:14 +0300
Message-ID: <CAA8EJprkq-Cct9Uk1Jwqc5Rn8mx8THTRgwCzDx=8ZgbCpwD7qw@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] phy: qcom: qmp-usbc: Add qmp configuration for QCS615
To: Tingwei Zhang <quic_tingweiz@quicinc.com>
Cc: Krishna Kurapati <quic_kriskura@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Andersson <quic_bjorande@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_010625_105829_EA0E86A3 
X-CRM114-Status: GOOD (  22.76  )
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

On Fri, 18 Oct 2024 at 10:48, Tingwei Zhang <quic_tingweiz@quicinc.com> wrote:
>
> On 10/18/2024 2:27 AM, Dmitry Baryshkov wrote:
> > On Thu, 17 Oct 2024 at 16:07, Krishna Kurapati
> > <quic_kriskura@quicinc.com> wrote:
> >>
> >> Provide PHY configuration for the USB QMP PHY for QCS615 Platform.
> >>
> >> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> >> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > After checking platform details,
> >
> > Unreviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > Please perform global s/QCS615/SM6150/ and s/qcs615/sm6150/
>
> QCS615 and SM6150 are different variants of the same SoC. QCS615 is an
> IoT variant, while SM6150 is a mobile variant. We are currently adding
> QCS615 SoC support to the upstream Kernel, as it is in an active
> development stage and we anticipate many products based on this SoC. On
> the other hand, the SM6150 is an older mobile platform that is unlikely
> to be used in new designs. For a product introduction of the QCS615,
> please refer to
> https://docs.qualcomm.com/bundle/publicresource/87-83838-1_REV_A_Qualcomm_IQ6_Series_Product_Brief.pdf

Yes, I guessed so. It would have been nice if it was documented this
way from the beginning.

Please note that we usually get support for the mobile SoC first. So
in most of the cases devices use mobile compatible even for IoT
platforms, see qrb5165, qrb4210, qcm6490 and other similar platforms.
I simply asked to follow the established pattern.

>
> >
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
> >>   1 file changed, 3 insertions(+)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >> index d4fa1063ea61..c56ba8468538 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> >> @@ -1123,6 +1123,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
> >>          }, {
> >>                  .compatible = "qcom,qcm2290-qmp-usb3-phy",
> >>                  .data = &qcm2290_usb3phy_cfg,
> >> +       }, {
> >> +               .compatible = "qcom,qcs615-qmp-usb3-phy",
> >> +               .data = &qcm2290_usb3phy_cfg,
> >>          }, {
> >>                  .compatible = "qcom,sdm660-qmp-usb3-phy",
> >>                  .data = &sdm660_usb3phy_cfg,
> >> --
> >> 2.34.1
> >>
> >
> >
>
>
> --
> Thanks,
> Tingwei



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
