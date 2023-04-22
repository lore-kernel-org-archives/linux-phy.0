Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47F2BC7618E
	for <linux-phy@archiver.kernel.org>; Sat, 22 Apr 2023 00:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOX0dKVMxe7WS2fHdmyQ5JkIYFSl8S7Dmk9X46eyzdg=; b=1GR7/ZQ37udOfC
	ogL25qRlTXlQDYsk28lfGUSTcrsaBoIbB4dbUNp+8kz8KhyOIRhKzmeI2MA0gE9hutPRpqqRQrB5/
	vocn7fCGSV+/N3cismdr2iJBdJIz7mYtMUOrX1L2MKr7pUrcbJbQvrUwyWaHG0V3wTdf3ydciwlw7
	psdcir2+b0uBqaQu70aP4asaUkdEim0g/FoiT4ukcMjUmPwKiTnGTFLlJ26GO2jzXxNkqFR7qXyfm
	Wm4fcJTsPcp8BuYw6LyPnAZDS96EIYEX3rRd4mm2sB294aAH2YmWhqJEzUUS8lvLDCiezAvfuTBQr
	zuSsn8/Vemfcl2Hg6wCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pq0ob-00C7wh-30;
	Sat, 22 Apr 2023 00:09:21 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pq0oZ-00C7ue-1h
	for linux-phy@lists.infradead.org;
	Sat, 22 Apr 2023 00:09:20 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-b8f72e5bd9bso3165361276.0
        for <linux-phy@lists.infradead.org>; Fri, 21 Apr 2023 17:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682122151; x=1684714151;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MmdtSh1w/AUsFLevVQK84fJ32J2WUs/jp0y/0rXdHOc=;
        b=lbNqDq7FL+eHY0F/4x20VfGmaNxBVQkHRX1smlrAvAwO2PYd7PPVRyF6nDKQUWSynF
         aaT8ElQtpKBYzL8CilDIeZontx72c77/FYA2K4RWLELEKk+0VNVOI7C6ODyC5LuMQ8cW
         2gVlJltSlPoLhI73VglEjQ2UpeXnlEIwNEK404tdG0E3ROhZV9wlzt0Ufn4GKpNhX/OT
         FRPTTzPa8pYITQzBwEq1Ekbyg3ENyqcWAJDGptbpnYR3dWXMfHfHRjjZSHkl7IXp0ol+
         foU5BKQg95VeZ1DX/rZH9UsOG0qJPBN1gq+fIMhiehZ9S5qBBqK6RnjK8nI5PindSbCR
         emlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682122151; x=1684714151;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MmdtSh1w/AUsFLevVQK84fJ32J2WUs/jp0y/0rXdHOc=;
        b=gvjUP8VB+XQ+GQqKBgoZkZpp8aBrVcZVDuAU1UAcXMJsAQB5SQK6+J5UlZWE1lLyYW
         1ZLWPsdM98qOW9Vtpm79WGAyxtZkb8CT5lfle7FzL2RXY6WVCLspL2zHfUVXLvmL9xJH
         BD3Ok8X1DNUaOzs/yTZa/657v3YP8j5tn/+6ygXigLjmXrzFWhiFL/VC3zibPIv9SzZb
         //bEGhhiRumLwrupLe61V/1r28foaOtf1knMiFiXLhvkah8rHjOMjM0LCXkpDxE77Y8i
         U5gy61caV46tVvz0L7aLZ6dvWDILQ9O46ASGwo0abajV7Fu4trZYXx6hAK1eWLOowUCe
         Dd8g==
X-Gm-Message-State: AAQBX9cVt8dMcSWO3FukfevHbzJ4fFAbW849l9z7XFhmL6oMlpNzqN8O
	BxxiLuNf1RA3mnwI6Ce1KoOmJsBKiQQmdlli6q89eA==
X-Google-Smtp-Source: AKy350b+L7wCHVqP/UYw/lYuSGq2eOHagsapMSK+wVxHlAmrKjAoUyAzY8gAYEeJb7AKvcAd6Hno1NVDdenS+k1+P0I=
X-Received: by 2002:a25:e0d5:0:b0:b98:41a9:8db9 with SMTP id
 x204-20020a25e0d5000000b00b9841a98db9mr4365078ybg.0.1682122151678; Fri, 21
 Apr 2023 17:09:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com> <20230421133922.8520-5-quic_shazhuss@quicinc.com>
In-Reply-To: <20230421133922.8520-5-quic_shazhuss@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 22 Apr 2023 03:09:00 +0300
Message-ID: <CAA8EJppLfk4DZ8Qc8qKH=--vXGQcVY_eZ8hQCb5s3CGR54v2Hg@mail.gmail.com>
Subject: Re: [PATCH v1 4/6] phy: qcom-qmp: Add SA8775P USB3 UNI phy
To: Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_170919_563068_B62734C5 
X-CRM114-Status: UNSURE (   7.99  )
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

On Fri, 21 Apr 2023 at 16:41, Shazad Hussain <quic_shazhuss@quicinc.com> wrote:
>
> The SA8775P platform has 5nm USB3 UNI phy attached to the USB0 and USB1
> controllers.
>
> Add QMP PHY config, pcs entries and support for the new compatible for
> SA8775P platform.
>
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 45 +++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
