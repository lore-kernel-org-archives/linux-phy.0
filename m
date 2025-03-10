Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BBBEC282DE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 20:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HsGHvDBSVCowQkWkxkmeY58+lxPIle6wG/0JxjCNWQ=; b=s1XAwOA9IhEk7u
	JZ9vXiaWpstslBlnx81jBAyMx1l1LPnoPaZi+oIPBXirEftf4+a7k1H7rMkw0aJhkVvoA15N4mDr8
	PJ+Fh+PgZietsE8ouIUmg1TH134yCWgYyI0CqskAq8XkEVIYWJb36PmwWc4+ZOs7u75g49vIquuR6
	hX6K8jRRHvuZavenlMlkxl+MuGtE1164fx9MEdHlXOLVsS0UrTeWUVUTnYE2vjTuzfai3bzn4isFr
	8yQqSGbSCd7l/GI4PPQUXjV5jSVoeXFO1JtjBHyTvyeACsRnGoNxMw4nB+Sp+SiljCosw5RodkNPP
	2m2I2v/fy9gd/Q7Ywkqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trjy6-00000003uFR-0gdt;
	Mon, 10 Mar 2025 20:43:22 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trjgw-00000003s8x-0ydd
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 20:25:39 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-30797730cbdso49603391fa.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 13:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741638335; x=1742243135; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dYNmRZYB/IDO1RurR4i6iqDD/1mktBUeW4kgdxDpZIw=;
        b=OQ1Ly2B7f1n58aWDILfF6Nw97/QAcMN848DQYnF3jWLm4XeM8r11Rrd7gc3tvuV6uZ
         LjGfhzVhbicGSK1x4t5Kq47OdvWUwZyjsDuN/SGEDOs8sA/5f7kbEpJj3H998ItIg4rH
         gwxOKjoBQEoGcFWz0Mic31/rP8UhuO+H/iJHcrNL1zWhtNFSTVEjpo6+n0ZU6/JLSORe
         ntIeX4Q+ljDnuJreitaGrWmun7X1rWktGlxd5KbxXJf7sgDLxcyaNNfttz1OEb1uuqRo
         mI+5rPmlzreaYPWsCT4vzk4XnxVBpP56i2iTMg71vC42FNGgYBuyvaz4xQQVTN6SM89h
         4Jgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741638335; x=1742243135;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dYNmRZYB/IDO1RurR4i6iqDD/1mktBUeW4kgdxDpZIw=;
        b=GAA3Dz+vGmIXty4vIf91ER48Nje0TIjCNauKocziQDurFdPCE8q4LT0abpv0N1qtVr
         yaxxYOdIAP8Ym/dPBhhADwZrxrVHWQ2fbC2gaLidojmeZR+UQpbusDWfvYx0bBLfDHd7
         v1RMZPTp0743A4xcUDGsV4jIPlJyXGk4/ztohWvbHf1RFhg11YQqNzhTMjP8/km3znG3
         v+QQ5JBkqecLT5k5990VqM1lTI8mygj8GEJ4r5VV5QkJppBOvoAuQ4MwxcfjhPYwupwR
         f4nqQ8AnbFzjEms+7MOh2pxr2cfhn6KlDlO1P9LJdgE1UKSsP9hkmEUxHybiE6gENDzC
         NmJg==
X-Forwarded-Encrypted: i=1; AJvYcCUJxPuOea9jfQDfS7Wlo1/tqrSSnZfvq66IJDcRGBFYCV3GJo6uhc77v868RdgXGahsEjppvME65zQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8ckfXX8GdNaqjsQjff0gfHW7bq+zg3Hdd2FZNRh8qWgXXPQsO
	sPbvTRb16q09iCGa9E7NLpmHiacsurAcoUVdL/y9zDiYSx3P6jnofWjj81OGLE0=
X-Gm-Gg: ASbGncsTfF8QmJvSgg6tOnvI0rgQt3m2uMoZjwFvN2IIgi3F7fvYtokf5zfOSplivXO
	op1LwP/Kq7GAEwjSPHGdIooB47zG08cXz99uVyzx1gGEh1rjhIm0wrCTWEfPDHV+GN2n3WW5eUZ
	gSOLSOnlje6A6rEhcldP5M8HE9ZoVIqPgIqc0VVBcTTVkdvAteXWUxMT6kbxEORnR6n1rEW9UWV
	Tia/S8YP6rC8nd4XrCiFPBICICpeCTc8J43xOXjCJvuwU4CURB8CTfvmp9eSAEVD6i4jhNGXtoY
	q0FNgbpDh3vJHz3T+BKBM5mz6dP4qps2LIb+s3YQNmH23NQ5g6hX4zg6ptcb+4w5xej9Nw7zC9i
	4tDCZ7YkcQVa1nCx7liUYhixO
X-Google-Smtp-Source: AGHT+IEPVrqhzKdG85UY4VL7q1PeHiNjtgCxYCgNnkHHR37Br6Hv/tkjnMqe/JrlEqz3SvLMcEnR1A==
X-Received: by 2002:a05:6512:b84:b0:545:f1d:6f2c with SMTP id 2adb3069b0e04-54990e5d4c2mr4659162e87.18.1741638335156;
        Mon, 10 Mar 2025 13:25:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b0bcf77sm1556084e87.107.2025.03.10.13.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 13:25:33 -0700 (PDT)
Date: Mon, 10 Mar 2025 22:25:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, quic_qianyu@quicinc.com, 
	quic_krichai@quicinc.com, johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 6/8] arm64: dts: qcom: qcs8300: enable pcie0 interface
Message-ID: <mxqrssteqfzp2llhp7exj7yoduv3h26qrxnsb7tobxkk7lxyeh@ywers6elgmwy>
References: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
 <20250310063103.3924525-7-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310063103.3924525-7-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_132538_275945_523619EF 
X-CRM114-Status: UNSURE (   8.41  )
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

On Mon, Mar 10, 2025 at 02:31:01PM +0800, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe0, board related gpios,
> PMIC regulators, etc.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 40 +++++++++++++++++++++++
>  1 file changed, 40 insertions(+)

NIT: patch subject mentions qcs8300 (SoC), while the patch enables PCIe
on qcs8300-ride (board).

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
