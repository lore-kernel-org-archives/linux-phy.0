Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6074C77B7E
	for <linux-phy@archiver.kernel.org>; Fri, 28 Apr 2023 19:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckmVFhy7s9tYqW+314UrfFxKefG7CWVYxLlhg4tGvbs=; b=kIkWVo37wloHN8
	53s9TIn7AAjcVUI5YAsws1TE5GYKm1yBDi7g5fHK7+sNEzrtEhN7wZKyZGzPYz4Z2a7h9CTP0+SuC
	4TtktzpxpXKPZoyz5S6VfrXJ/egT42vLR/K5Aoy3SIU6PGp+yYvA1cqSXE+6svQ0wTCw5J7xPZDjT
	hlKs4yr+pAk8TMPtK2CX2akIY0Ghy4VthY0p2Vyxc36KvvHycd05iJYKkPdS99hENVKqS8OfU1kSz
	qRG6KuRUAX8IM5K+ERklPtEu8mdJYMcm+jGJAF4jQ97wvn0hQfqQ0PWIf6GcYATcZC6vtDBSo9IH+
	IpzjbHsAPVx7V4TgV/Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psU7x-00Bf3W-1E;
	Fri, 28 Apr 2023 19:51:33 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psU7u-00Bf2I-1U
	for linux-phy@lists.infradead.org;
	Fri, 28 Apr 2023 19:51:31 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-54fe2e39156so3637657b3.2
        for <linux-phy@lists.infradead.org>; Fri, 28 Apr 2023 12:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682711488; x=1685303488;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2iUrTPEcxwWc1vNuZJ0gmdY5s32MtFeY+VlTLWDJ5mA=;
        b=IYwVfznzCb27JVtO7XYFTgG9lBTn6zfLk7WiEJQUf6G1Oe4VXbqKnK6E2OGpFsZH/M
         LrWUXblHF+S+sg4XZXYlx+M3sNNuObYln5mr0O1HyiBnzx/la/UmVbFQpNYCrw12NgdG
         d4G7ybCs2F8mI7oCAyLIt3XaMlU0Xvo4ZgXZ4S7uxIHBHKRcHxHSvOw2CVGsv++KQROw
         7QMd9nSy9kLQwY/v7SMVM1xmLKrF/WCG+I8097teM6D4yF+UfQMLrz7r/ik9PtjS8o5h
         9lAqRgSIweGOXM652o3j3CDUu0xB/Ez75eA9E4jOlDqd59WJibjjUw/T6jxrU3BIQEkZ
         EETg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682711488; x=1685303488;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2iUrTPEcxwWc1vNuZJ0gmdY5s32MtFeY+VlTLWDJ5mA=;
        b=hGO6hNzlDVdC54JjxqsLs6Cvw6Vypkqthdm2sGmGwIA2AcbLx8zdDlvD2OKzRLMcNc
         fzogGFA2N75HTVmNQs7970X5HXhF3KxvMTPTqCDkrTkPDsgGaSibmTBexM9wmQjfBGRu
         KpXLysnL2w2Jj9WnTyFlmzLVCcZeKjEjDnEOMUiQcpJARlwZ02dyPMODqePKhEU2LlON
         adLeXYaZpvYqcFzOgrks+MqM0v7KzvgiteeeiYYhtCCauKdyWF+/fGIpTisT/UjFUCG/
         XbdrgbYAoAEs4Ashd7bP6bBELiC7HdF+fDFKfxSVWvP590dBCI46eYrMFS+IsxO5IGB/
         IyWg==
X-Gm-Message-State: AC+VfDyH5vNDDgZlvHlZvRFXtH9Z7XuQvMVM+7Pxc8jCleGQw0QkBPqK
	K9JwdNQM/+R3BBD0861n10RPYHDED9CnLsOlp9cPfg==
X-Google-Smtp-Source: ACHHUZ6b2Zhn/Hf+c8mpZ1dPunRRP2tAfSGwIMtecKEcAfaGGa72JA+vw89D1VNEwvTUPKxVX1/bDBkuQCL1hQSvp9Y=
X-Received: by 2002:a81:6bc2:0:b0:552:dfbf:b19a with SMTP id
 g185-20020a816bc2000000b00552dfbfb19amr6068497ywc.4.1682711486494; Fri, 28
 Apr 2023 12:51:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230428130824.23803-1-quic_shazhuss@quicinc.com> <20230428130824.23803-5-quic_shazhuss@quicinc.com>
In-Reply-To: <20230428130824.23803-5-quic_shazhuss@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 28 Apr 2023 22:51:15 +0300
Message-ID: <CAA8EJpqKBoJoxgjRKT0zPtqtg7f52aw6pyz6WTnYghVCJ6UH5g@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] phy: qcom-qmp: Add SA8775P USB3 UNI phy
To: Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, athierry@redhat.com, robh@kernel.org, 
	konrad.dybcio@linaro.org, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230428_125130_507218_F1B56A69 
X-CRM114-Status: UNSURE (   8.57  )
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

On Fri, 28 Apr 2023 at 16:09, Shazad Hussain <quic_shazhuss@quicinc.com> wrote:
>
> The SA8775P platform has 5nm USB3 UNI phy attached to the USB0 and USB1
> controllers.
>
> Add QMP PHY config, pcs entries and support for the new compatible for
> SA8775P platform.
>
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 45 +++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
