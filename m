Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EB7ED2FFE6
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 10:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=El/JIKXC3Ec0e/rJczC22gMRYMmbvV9jj8x2Zg+Uri0=; b=MxPYmU/8gWnPZE
	UY6XJ2Hnk2NGzBTQeph+vg6Sqhwx6fvQpwDKlkyFN06k5nT+KeXEmcGQffh3kP+xU0AmBvJhcKsEm
	l+UJosqwpzijEmkc458xs1v8nKgsdJ5UHMQr6mx2zzROKk83Zq1LTdpj6hav5fmg6EyWWWN3M2q4p
	/bVGIgtraQbSjbHpsNiMz4uTeYJwChRzBRJcyQk1/rt1N5nQgnBU94vfIsovB5Ghbxako/41AdbO+
	e66F7lICs6+cu9G0gtLOVdZe/cXqQascLMoedq8eDxXPBxsE1WCSLhdZFNe6mpuM7pBuJeyprb84p
	vrG4W2E5YCtSFQKu8TaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1k8o-00000000M3c-3qmA;
	Fri, 18 Oct 2024 10:23:30 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jxd-00000000JjE-0LUS
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 10:11:58 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2f75c56f16aso20058481fa.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 03:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729246315; x=1729851115; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jvY8KYiHaZqzdfBn2meM7L0X9I9zbwo+MC/72l11qcc=;
        b=yvd9D+sKeos/uIwxMA7WkQ3i2Lvi3cDGp7CweX2akspICH6CgeM4OuVTfTV72ND3+v
         xVdn0SeHsWteYQqOnKanXgpo2ymgibh5Tg/pKV2ddhYDZ3t/2Lpg2IX0he+jhn/FenZO
         u+nWJlEOHywLyyRd/dlXuRPWW6a10VBcNQ3CZTU6HEFRZXd1mzYumDupl7xk1j40JsDj
         /p7UTL6UQJMzQ3SxdoTMvCNp/IBFeDgz1YGIlsfdlAIZRE0bWt6WzKyYwQ8XnSGiBl1W
         YZKLRrClzXQWM3sSPZnAoPtIcyxlP80meyU2g4pNTVnGPeNoNOPDYEn8a5Cjbu0g2edN
         N5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729246315; x=1729851115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jvY8KYiHaZqzdfBn2meM7L0X9I9zbwo+MC/72l11qcc=;
        b=C8ioDtBvvZQtVnmopAaKH3sId6yKkfRsARQoBWsBHeOS8C/RpnWLIO0MsqJdmoA/ew
         eiCiRh0HXCSND3wS6y9nSejbUB7zS7jGPs6bX0KPSBNcTXRgXdh95rtGRHAbzuZ8eOYR
         zicLCnDgPoszCuSwkZJtQw45uXlmyRHDsmf9Hynbc+O1fiVAHeWsA/vrKHXmBvx/0Knn
         pOowGHMQXo1OsYlE2N/C0Mhm0J6P5nykG0FtVcPKXRn7DBKZMGv4iEMKnma3tZUws5mR
         sa3Qx0hDXX7DCRlvSF0Bv89u9xB9Yz1PNPqFPX94WEyEolhrha2V9rd3FDkG1iNRerDo
         facw==
X-Forwarded-Encrypted: i=1; AJvYcCWt8/xtsLLhph7cf/rM9iw214rwGoCjyxWg3xkmD+jT3M+vC6bMeJlnnKGgLiGP7zPSy1W3utTQNww=@lists.infradead.org
X-Gm-Message-State: AOJu0YwwjV7eMG1LsvAaC+SOmvRvasmPfsfTRFPeAooS7ypIMNU/SPQV
	vR2VRoUYsLF7gFVh9Hw5L9pub9paJh868eZxxZFOeY69TByedSVTM7OabWL1p0I=
X-Google-Smtp-Source: AGHT+IG3sYPji9qicEvtFNlcAs92ChQJkMrU6bQriug80NS0HFO4UZ/qbgCf38X9ZiV302DAIpmCeg==
X-Received: by 2002:a05:651c:542:b0:2fb:2e27:5334 with SMTP id 38308e7fff4ca-2fb82e98f77mr7417511fa.15.1729246315128;
        Fri, 18 Oct 2024 03:11:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb809b2ab8sm1878671fa.48.2024.10.18.03.11.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 03:11:53 -0700 (PDT)
Date: Fri, 18 Oct 2024 13:11:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tingwei Zhang <quic_tingweiz@quicinc.com>
Cc: Krishna Kurapati <quic_kriskura@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <quic_bjorande@quicinc.com>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: [PATCH v2 5/5] phy: qcom: qmp-usbc: Add qmp configuration for
 QCS615
Message-ID: <l4wpt5qin3ezkowf3puvodrm5wjsptd4a32f4qrzcuuquo6kq6@j2orv5z5quln>
References: <20241017130701.3301785-1-quic_kriskura@quicinc.com>
 <20241017130701.3301785-6-quic_kriskura@quicinc.com>
 <CAA8EJprcOU6qeJvHH+MVoPnQ+mGcos=pDOVBSeSUfBGw-KR6tA@mail.gmail.com>
 <aa68e5ab-86a6-430e-92d8-ed89b4eb37f7@quicinc.com>
 <CAA8EJprkq-Cct9Uk1Jwqc5Rn8mx8THTRgwCzDx=8ZgbCpwD7qw@mail.gmail.com>
 <684582c3-3559-4c54-8257-cb952bbfe2ec@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <684582c3-3559-4c54-8257-cb952bbfe2ec@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_031157_153518_B72DE54D 
X-CRM114-Status: GOOD (  23.88  )
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

On Fri, Oct 18, 2024 at 05:01:48PM +0800, Tingwei Zhang wrote:
> On 10/18/2024 4:06 PM, Dmitry Baryshkov wrote:
> > On Fri, 18 Oct 2024 at 10:48, Tingwei Zhang <quic_tingweiz@quicinc.com> wrote:
> > > 
> > > On 10/18/2024 2:27 AM, Dmitry Baryshkov wrote:
> > > > On Thu, 17 Oct 2024 at 16:07, Krishna Kurapati
> > > > <quic_kriskura@quicinc.com> wrote:
> > > > > 
> > > > > Provide PHY configuration for the USB QMP PHY for QCS615 Platform.
> > > > > 
> > > > > Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> > > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > 
> > > > After checking platform details,
> > > > 
> > > > Unreviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > 
> > > > Please perform global s/QCS615/SM6150/ and s/qcs615/sm6150/
> > > 
> > > QCS615 and SM6150 are different variants of the same SoC. QCS615 is an
> > > IoT variant, while SM6150 is a mobile variant. We are currently adding
> > > QCS615 SoC support to the upstream Kernel, as it is in an active
> > > development stage and we anticipate many products based on this SoC. On
> > > the other hand, the SM6150 is an older mobile platform that is unlikely
> > > to be used in new designs. For a product introduction of the QCS615,
> > > please refer to
> > > https://docs.qualcomm.com/bundle/publicresource/87-83838-1_REV_A_Qualcomm_IQ6_Series_Product_Brief.pdf
> > 
> > Yes, I guessed so. It would have been nice if it was documented this
> > way from the beginning.
> > 
> > Please note that we usually get support for the mobile SoC first. So
> > in most of the cases devices use mobile compatible even for IoT
> > platforms, see qrb5165, qrb4210, qcm6490 and other similar platforms.
> > I simply asked to follow the established pattern.
> 
> Yes, we start from mobile variant for most of the platforms. There are some
> exceptions like sc7180 and sc7280 which we started from compute variant
> since they are widely used by compute platform on upstream Kernel. I think
> we have similar case here. QCS615 will be widely used by IOT products on
> upstream Kernel. We should have clarified this from beginning so there's no
> ambiguity.

After offline discussion with Krzysztof, I'll lift my objection, so
still Reviewed-by.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
