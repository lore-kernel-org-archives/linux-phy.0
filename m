Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36E8EC3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 09:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RL7DfX3WngTIkHj/8FXdfulbD0zTK24ihVDOCx9LXHU=; b=s0Y5rrqVE7TFQa
	mBnui3nHGKbdAJJ4zqIHH2o0Yo15/IsWIi460nlNRmG1apbEDKMjsZS2qz7mxeEW3Ns2xJdw8sxxf
	wdAawtw3qbzToSydkGNzxzQfZT9z7RVH8q6U/Hmtw0GjKYZRD9yTvIuNBjU5KdHwOizn1xc+tQL/c
	yt3kPwwUKPsXXwG5T14+HgT3qb0zAj+Bsor+ubKhe3GmW0f3TU/56pmjvIQIC2N8i70HMFbooaKK1
	nvDbaH5TsWqIYZ119ySIBFo4YXgAdi6hrXeuz+9995jYy80hwbLT7zNDhuaAbgpAj+s6GSQWLKGv9
	yAEKsir2LZFYUtRVo1rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPJZ7-008TON-2u;
	Mon, 15 Jan 2024 09:47:33 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPJZ5-008TNw-39
	for linux-phy@lists.infradead.org;
	Mon, 15 Jan 2024 09:47:33 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5e7f0bf46a2so76422697b3.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 01:47:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705312047; x=1705916847; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KFasKVeIFS8eA29J5OC5S7BAGeeHVHQITZOFxwu8rvQ=;
        b=omVU8/VdVA/6oIMv5AvxDoLPZt518PuYl18o7G8kqB+cL04Enj7WcTOUSBf8CIrow/
         yc7yB2B0EAq3TU4jTFfCFPTHUQQEbdXzxL4GUFU14WaGg76RAiySeg8yGhe3SMoPFo5k
         l0Py6dLTg6/gfPs3AaIRXtC1RwFuOLdcpv8qrHEPyJV3yubkCLUl4FK09qQAYcqzR6Sq
         H7fNJ4k1khWjHAdsnE3ZbzTl3Pz+xaO+OmO1lCJ4RUTM1QpFkkUJB8dIuYg4E/fiEY2C
         HAlzkw/byw5m9fb4ZAx9r7gNsY8VKz3f7DIwKh+RHYvhXl5nioG9oI7zyz8gXOdN4w+C
         4bnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705312047; x=1705916847;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KFasKVeIFS8eA29J5OC5S7BAGeeHVHQITZOFxwu8rvQ=;
        b=t1eVFMh286xkM2KFS7BdoF0hRY/tQLJpsIcm7z6r1wZpvczuu57K2UvOHXvzDACTsm
         QNGj5bO4v6Dnq4lkVWnalI4lqookQF4JhdvR26yKrCkJkdQ00mZC8wZLR8DFuRKNChdM
         veAfmqgv5SdVCBTkd05VrpnDXUlIYNEqBYDUWtkslQI3ECd6w5RHibY4XczSn35Mb/Hy
         9cljkzTWindFC3Jughkw+z1cbRtt+Vk/4mXejDrsMzpVoYKc/rkUeemK3J0HwT4it8b/
         7KFaVvCQaNQSXqIveeolFawehU+mWF+rHX8QWp4zy76VWXZXWQohoXQy3r1JqkNNolW4
         Uq+A==
X-Gm-Message-State: AOJu0YxdnEwCHAy3nB7E8Nhwm/iyNhZdz/g0WNoBrTe4EGQWfSlQLh8j
	IPpPsuHs1gEW5WTeNoPBEaWnlTClMXXW8DqNjWAhec4iS1x7hA==
X-Google-Smtp-Source: AGHT+IGDxeO4T8bagcuUSUZ0vMjmvo/iXyCvviU6IkM5zpYZ/eSn970UnrLfZAjyWjqwQ+WhSzN85TavpbmAnoNw87w=
X-Received: by 2002:a81:d003:0:b0:5ee:1ca0:b7ef with SMTP id
 v3-20020a81d003000000b005ee1ca0b7efmr3089640ywi.42.1705312047014; Mon, 15 Jan
 2024 01:47:27 -0800 (PST)
MIME-Version: 1.0
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-4-182d9aa0a5b3@linaro.org> <2c291056-e4c6-4c8d-a8c1-37cfd5341652@linaro.org>
In-Reply-To: <2c291056-e4c6-4c8d-a8c1-37cfd5341652@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Jan 2024 11:47:16 +0200
Message-ID: <CAA8EJpquRv20NhQ2CUZaAju-=E4cFUsXS3i9fKAPHnwkd8Yf_g@mail.gmail.com>
Subject: Re: [PATCH v2 04/15] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy:
 support USB-C data
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_014732_018100_F0D9D187 
X-CRM114-Status: UNSURE (   9.01  )
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

On Mon, 15 Jan 2024 at 11:16, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 13/01/2024 21:55, Dmitry Baryshkov wrote:
> > Extend the Qualcomm USB-C QMP PHY schema with the USB-C related entry
> > points: orientation-switch property and USB-C connection graph.
> >
> > Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Hm, this feels unusual - is really the phy handling it? Not "Qualcomm
> PMIC based USB Type-C block"?

Yes. The PHY handles orientation by switching the SS lanes accordingly
to the way the cable has been plugged in.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
