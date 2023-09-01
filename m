Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA255CA0FE8
	for <linux-phy@archiver.kernel.org>; Fri,  1 Sep 2023 21:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4qZBEiCRYT20rMUk2fVw/4Pm5UiGP6ZX4Wrvi2OxlM=; b=kChid2534lbE6E
	mLqIJ4UifKnZd983y+4IsCzF5jVWP4RSjPRSF9GdEeJcB0hWGypk9WxoGOueiDqsOdTvbCTlnLq4c
	1LFVLD3/1xbu5omkjW/tAR+gfoyt0oTkWlwlZkD/nxQN9NyL3/CUuLrq+o0GVuyuasHcE+9PA1P1k
	/ShYqgBugd0E03mbmkT+N1x87M+3/CZISngcIQp26UGDoLZFzY6KHQSFJeKvxUFnE3FZbeXFnVMLq
	yj+m9z16Mh5IXS+ciU10E2rm+69Ov0JLTIcPEf+MRlR/M5rKIIMruihPIt3xDusgQ9nVAdG3mOK6V
	wp07vfPpdJFxxJZq1LCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qcC2f-000QO9-0j;
	Fri, 01 Sep 2023 21:51:01 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qcC2c-000QNr-18
	for linux-phy@lists.infradead.org;
	Fri, 01 Sep 2023 21:50:59 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-d66f105634eso1902550276.1
        for <linux-phy@lists.infradead.org>; Fri, 01 Sep 2023 14:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693605057; x=1694209857; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7T5FXxzSpNMSTBIFW6gCFjur69dUAN6sqrMcK/o/Gpk=;
        b=V0u09Effh5kLtkugCF3954iW7w3ikMEDQkV0JUtkEVrFRvvalh0Fgh21AzcIMHkbL0
         dUs6h+jHwhOcjHsOYFejMbrAcmA+GoAAKxBJAInwGHZnzYvublVpnHcip1h7KXHeVjtU
         53lhky6/UKyUm0l+hkC9vvos0gGSy1+X/DNVo1lS5GKGa/wCtOUjTcOKA3tEu+xzVxtT
         r/rGswQfcQNmeNl5Uo6LoxX2FYk6YNKVQRSRmKTJJNImfMXGsJeLxevzdh9zfgsWB18O
         ZmznVBE3pThrAThvPbkm9jFN8X1nYCQOR27JqQWp0sQNApHv5SdaqxAYM+hLUtkhyJDY
         IwmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693605057; x=1694209857;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7T5FXxzSpNMSTBIFW6gCFjur69dUAN6sqrMcK/o/Gpk=;
        b=O5KT7udpaXpL7bOQAhZGHgooPZd2okvRoLK7gIVSHnemONSCm6OTGGH0VU+qJQK/cp
         LTid8aBapKOUPybBJkQw9lGzVXNfL6fh1enY4nLvhrjqnlGB6p37PtltHszaY2nOdvec
         I2fXDNCwACmoeK/M653X1cl5Z8PUYgmNlf3QJ1P/fqXIMlMot5uyynrb4T3ofRDBGTt/
         unANzBm1uqIVd/w5yLjTUcS45YNqqEug3HLeId/a4i0vqbgtYhsLuTpnaeRZ0r8DbDFT
         2SdFWiY5YQEDoqlW/Fn8xvuN8MLE/UZ0g9/7P0zgpj/fD3EnrhUn1iJox20f6rILoW+S
         Mp2g==
X-Gm-Message-State: AOJu0YxGGS+N99xA5YGNobDKzYsr3IfQtufNxb30p0MAcD9/yDiqgj0B
	/3RiyB8YmtyRUEagoaDCGiaudp9K0sw0FDAG0OA8fg==
X-Google-Smtp-Source: AGHT+IHZQWWQfsVRShlkEDLQEG+XgcCkRipps2a4WR5lRLbz5QhPjZI81c9oDeBkoqagzkt8tqC2L2HBVFJuCDOZa1I=
X-Received: by 2002:a25:b201:0:b0:cfd:1bb9:e356 with SMTP id
 i1-20020a25b201000000b00cfd1bb9e356mr4588793ybj.32.1693605057193; Fri, 01 Sep
 2023 14:50:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230901092645.20522-1-quic_nsekar@quicinc.com> <20230901092645.20522-5-quic_nsekar@quicinc.com>
In-Reply-To: <20230901092645.20522-5-quic_nsekar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 2 Sep 2023 00:50:46 +0300
Message-ID: <CAA8EJpqsox3HPh45UhtqcWXyKeQ74LxLcyxHuDMz+G8Go9Todg@mail.gmail.com>
Subject: Re: [PATCH V3 4/4] arm64: dts: qcom: ipq5018: Enable USB
To: Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, quic_srichara@quicinc.com, 
	quic_varada@quicinc.com, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, Amandeep Singh <quic_amansing@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230901_145058_413746_F4ADA7C1 
X-CRM114-Status: UNSURE (   8.98  )
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

On Fri, 1 Sept 2023 at 12:27, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
>
> Enable USB2 in host mode.
>
> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
> V3:
>         Renamed usb2_0_dwc  to usb_dwc and sorted
>         the USB related nodes.
> V2:
>         Sort and reorder USB related nodes.
> ---
>  arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
