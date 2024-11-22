Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EB6FE65D39
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 09:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqcI94zrlcJvwZNSzWhGBPnuoIzCwTt6ceUX6WmZo1Q=; b=XSGKg3KDCTq4a+
	afWTkX4lrreQh+FHDFLR2LYY196yebVWjMoD5kHQLpt0HiEb8toLundpwOQkPene2Bw2/G/L9oaIq
	SJKboAcTTEByOwbqugz0O1xuvC0yoJW1Yx+5l4n0HT7PDmSd48/cY8DM4ROHgrtnNtUCB0F9b38Rj
	AeTMcdPHkJcmRSfRwP6F/jbM85FEph0Dh+OSK9E5xO4PQWvyJPkT2Gy16ug+ypc8jH4VTgBO6/AHr
	wvk7f3dERkn/mbDMKrIkJWxH70PS5f/UlSYnps+KZpCjxpT39G/rbYU/dklSSYUJ/LGzrH2YVzgb9
	AUVoqfI9QHXGCmpQ460w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEPwt-000000025uw-01w3;
	Fri, 22 Nov 2024 09:27:35 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEPqh-000000024kk-3M0x
	for linux-phy@lists.infradead.org;
	Fri, 22 Nov 2024 09:21:12 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-53a007743e7so2086721e87.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Nov 2024 01:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732267270; x=1732872070; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LO/T9KKXXkkfpYB9cAxNeBeflDg4LqQIxBh3rr4lV2o=;
        b=jE61uIOO328b84xSBhqjQgoENhhlGsrUS0+ELL8TSrgt9oiIo3kQmS20g44WH1xczP
         0+bUCGDeEcfsLx99oTQgahDpRWnNIC6dRw+pqA2wnV3a2W8IGp4yGtDZ+7NV8EQCbXvb
         fctgQwLNksrT1bCEBC8MIDYVskcT5okhhnd53xSKBINwbNoTlcFau6cruyMW8mPBV3E0
         RlBvyZYKsz5/pPdPhYxl5rP9ZoUXh/E0cJpxkuonTihMLmKFtM8HIh7sm0LVpc9ewFLv
         IHVber4yKoYr3HhejZLNznlQzqosmFXi3SRNI+iqAfF+usrOZYQ7pm3Z5ZdOL8OLvoTz
         GsiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732267270; x=1732872070;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LO/T9KKXXkkfpYB9cAxNeBeflDg4LqQIxBh3rr4lV2o=;
        b=jz18X/+XUH70UujFO0e8k+mOfs+9s1MXi8SAw1nQ9IgZf+bK2NKocthIFQrDI99NO8
         WYCqHxDEtDQMKbhg+4fJ9VQl8ikjHHAmsWYJS3fhe6PM3iT2jG3tFx4EZi7s7pRLtpQm
         8L2SuKMySnO1e1HaxbVVh5lLS/dKTXeFg1SRFNoSG33GuWsahJjOulFEndizev8O91M4
         MLbN/rl6ChDB2ukzUIHkOVsuVZ5sKWRnUSb43Q+QHnp0nN560oJuef5SX6/eehBmFHFo
         LrrDbdmU7GWbFur5aImJQO8mtbrzpMD8mcZJQm+BZEcR9EujKeDi9LlGFR/qzsyfdR4x
         LoUw==
X-Forwarded-Encrypted: i=1; AJvYcCV4irbtaTBPo4H7Lz9URA5w5XtqrTPd9NrvMrRArdSkzS6NLT2p7dq7WMr37SdU7vM6GJs4OtC+wds=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7THN9h5Xf1hkmelc2mXHzPfUmk1qtLZgZy0az/c4OD+W3ZSLi
	0AfwcMAqeaxewRw3EiZwZWB4OzyZqRoZ0G88sX2DwkM9ufaX9/EUKu1EuGbLz3c=
X-Gm-Gg: ASbGncuzmTq3lrQi7FE6T2xQjC0NxDxUjpqYcIZU9C6FZjPaamyI5XKe91tVjXzySLW
	B+ifjx8kwag12VgM3/ARtXz5hJp4120ymZ5D28FVKFDl1LTrxueTYsz+mXfrJ8zb+/hsSsRMQnY
	me2eKHF5v9GZHaDqclhE8MpCvTlDo51hcSoFK8N29hDU4XSB2Cyxvi8R0QvIQea5lt8hQX1U7N7
	6F716h9jYIHDx+mr6C6vv0PfxY2EuliJigOXD6lCVkt0YpHWSkryj2OwIWj+7QCO14LuorZVc8l
	dKqMJVHQ/NAMLiL+wDi5i0L3NtDSGw==
X-Google-Smtp-Source: AGHT+IFFTnawBn5hQYvJKNcfaecxBmcU/11dXb9HtL1BCFqTi+wvt7hCbGfqNPY2ydrBRo9pZXh1SQ==
X-Received: by 2002:a05:6512:1247:b0:536:56d8:24b4 with SMTP id 2adb3069b0e04-53dd35a4f22mr926317e87.5.1732267270110;
        Fri, 22 Nov 2024 01:21:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2497df2sm299121e87.245.2024.11.22.01.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 01:21:08 -0800 (PST)
Date: Fri, 22 Nov 2024 11:21:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_tsoni@quicinc.com, 
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH v2 2/6] phy: qcom: qmp: Add phy register and clk setting
 for QCS615 PCIe
Message-ID: <xhcly5e5efbarmlfkczyq2qz3ektfggop4qz6qe2oip4cfeiig@5n2uyndasn6v>
References: <20241122023314.1616353-1-quic_ziyuzhan@quicinc.com>
 <20241122023314.1616353-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241122023314.1616353-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_012111_833773_59E3FA36 
X-CRM114-Status: UNSURE (   9.21  )
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

On Fri, Nov 22, 2024 at 10:33:10AM +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add support for GEN3 x1 PCIe PHY found on Qualcomm QCS615 platform.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 105 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h |   1 +
>  2 files changed, 106 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
