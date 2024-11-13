Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 100ECD462B3
	for <linux-phy@archiver.kernel.org>; Wed, 13 Nov 2024 14:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hr6qRtGtAwtWKaFD3yV12M2T1Qd/y39zf+H97lPcMus=; b=zWCzY3yVeo9E2u
	c+Wj3Do5LTj/HkwvcNixVdh4IXiM9q26K9vWFDW9KuOHOoWoUT2P1pyAslbZ6c/RFqYZ9zuKyjuTZ
	p2ky7HXG1RFo48j642sOHvbcZQTR854uk6ihg+zSGeBC29uq9Sxdo1IZ3iVsU3F1mBiSiklNjioPU
	GrZcFD42NoK4SkIS70mLQ7bujusWcWs/EChIuGIShOeqUaNYskavD4Z00cohF+tCLp9G80taRtUrr
	s6OgygQsen2ky+0X0Iiq8NQsgdHULZYXybhnmvTrMkX6q2T+CPrOoBpvlq27H3839LTDVjxT/PvxT
	sWEYKKeORPoHDe4wOpqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBEbl-00000007CNN-2b5T;
	Wed, 13 Nov 2024 14:44:37 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBEbi-00000007CMF-2aDb
	for linux-phy@lists.infradead.org;
	Wed, 13 Nov 2024 14:44:35 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-539f84907caso7923890e87.3
        for <linux-phy@lists.infradead.org>; Wed, 13 Nov 2024 06:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731509072; x=1732113872; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HQPpB0phrSoegtCutG0hX/vUb4mF3xNnw+0tCeNiRNA=;
        b=ESoCJtPsNXKxbzNAx16/p/TXPFSUY5yU3xJwcQts+y2ofgYnPl24P8srCRXZi7lkLH
         C+ZQJSvITy6HIJbKKdIOcIsAOhbP63D9JJxz+XekZXnzdOCma0NKsH2OrHZKbwTiGpMG
         BWUSKdMGUZxUDdWmk8lJ4SdbsYlqWbWZlee7pjF0Lp2wcODCweei2iQD5mmT/r2HIiIV
         o8RgrgQZyhGy9GUggfxkS9/q63G0vqPCU62Fs552ZaCCNR953AknTvpWwWGugm2DqxdL
         TlITDX2qctlAhGqgIz+JTEZNwNkQnbDTvJ2QVbvYAQuyVSUb21gaG4tyTsxv9BdFB4Fw
         8QSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731509072; x=1732113872;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HQPpB0phrSoegtCutG0hX/vUb4mF3xNnw+0tCeNiRNA=;
        b=gKviqfqKpldo5RdJqyw6AkA2WBfOiZiaf+Zk3VlFu3kTQ5w2+QqTkH/cDjrvTV10yb
         Ez8sikVIjqOxZzAMDtbEJSjoCPvX6wc1rOg7eoPqdaxv83hDemKIk4RUw4UQK6EF6SSA
         tqqcQPV+v7rffLT5YCNFyYv1OoaXGIKb1ujWycSlL9yZEoepiCAt6wLQU3SJ/DghIz17
         8/NTXUEIRB5/cOiMN4avV3c7dyamQfTx7lr9yxoQNhv8k6M5Q+2epV2TJ+FQeXCIjQY9
         PdlWmJfaEJc+o6FGIi818F31KZFCqRpL7rhSw9I2hGqSkEVyi0ElqBcBFYJ7j5bhpAa2
         139Q==
X-Forwarded-Encrypted: i=1; AJvYcCVazyTJfe1xyLimOKACWhknAtfv4HvWBjbrPqF71eKwFBzqQdUfmGVFUUxfbYjl56jX3l2xNxNjqJ4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhoaUOnibh87blBVzOKcCs7Uu6Ju+syOzbqcq88DLU8AJc+uAi
	mp7VAYxsdxLg6WjrFdvvE1rB89ALusRyxCHW0oZgSmouwKV2Fn2KQoRyaXcULKs=
X-Google-Smtp-Source: AGHT+IEI48XdiEjcdWrwwdwFWY3xjuTvfVBcKE/hPSJ/8GcfhyVPGSydhhwXBFZEyJFFyvXiYAdR6g==
X-Received: by 2002:a05:6512:687:b0:539:f696:777c with SMTP id 2adb3069b0e04-53d862cb2e1mr10285422e87.29.1731509071994;
        Wed, 13 Nov 2024 06:44:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53d826787ddsm2224961e87.18.2024.11.13.06.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 06:44:30 -0800 (PST)
Date: Wed, 13 Nov 2024 16:44:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	andersson@kernel.org, konradybcio@kernel.org, mantas@8devices.com, 
	quic_rohiagar@quicinc.com, quic_kriskura@quicinc.com, manivannan.sadhasivam@linaro.org, 
	abel.vesa@linaro.org, quic_kbajaj@quicinc.com, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 2/6] phy: qcom-qusb2: add QUSB2 support for IPQ5424
Message-ID: <3wacyipnmxdjdgp6rrpfwreh53zjlimjkpadpxqrclu2tdtjj4@enwogkt6wq2e>
References: <20241113072316.2829050-1-quic_varada@quicinc.com>
 <20241113072316.2829050-3-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241113072316.2829050-3-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_064434_680558_5FE695B5 
X-CRM114-Status: UNSURE (   9.26  )
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

On Wed, Nov 13, 2024 at 12:53:12PM +0530, Varadarajan Narayanan wrote:
> Add the phy init sequence for the Super Speed ports found
> on IPQ5424.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Change uppercase hexdigits to lowercase
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 28 +++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
