Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1566FC77B78
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 18:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKi5i2ZR7mJgMoVgpTjl76yLXjY8MMJcgr5KbOGEMg4=; b=W4NV2HOYaCq3B4
	Yw+p3kfqpRsUOFzdmnH2u43EfzQQ+T888Kw/XTbAMeUi+JK47rwwyJnfXMGwxeA4Cy1tat2uDQOgD
	nMYL/QTi11372xMbZkOLN38s48txeISK1Clcnau+vqUDCc/On/cogAPAvygoeYNjm1QWqpjysnfO2
	2SF52PlhaED5mCIPjhe/v+zBkpzvW2yr2BvDyuiGbhJWoGUKc5s8hhYsBsp0SBZnCKJn1mGd3uYXK
	nsgQfnR/fu47Ofci9ddhmf6vsxtJJWKxtAp2v+Lpk0Q9Rfpf48ljT+0P4OMGS200ONviXM4HplFdE
	o/gZS5DKXY1UbJ26vjxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptv3q-002P1D-2I;
	Tue, 02 May 2023 18:49:14 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptv3o-002P0V-1T
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 18:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683053348;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DZ0W+FU8PsLfAAZv9zbz/cngBwAlCp+YIRm01kljAiE=;
	b=WEQWVkoCRuowfnvASph77+4Thuq+xphdcVA6CEuicnmj5DXqDhKhYMsMR/SbLgN9C3Zv9Z
	ADYuPfWKjJ5w+Kd/daYE5+s+RRQMXhknqlqEV7IVroLu5tU9guAdLWX/EE8mBWleZ6CZGJ
	z2JW7aE+a9iIIEcyVfy7E2QT/mVd0UE=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-538-DhBAVNnMN4yRQnEu_Aha4A-1; Tue, 02 May 2023 14:49:06 -0400
X-MC-Unique: DhBAVNnMN4yRQnEu_Aha4A-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-61b60166509so10593256d6.1
        for <linux-phy@lists.infradead.org>; Tue, 02 May 2023 11:49:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683053346; x=1685645346;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DZ0W+FU8PsLfAAZv9zbz/cngBwAlCp+YIRm01kljAiE=;
        b=leKdz9omuxwsxDnk4fFXfaAxav2UwuScJKPN+MbWLx1cfwA4QItwTIciX7S+Q0YWjg
         2mKcDWWvxI0cLjvjL6/uXS0kzK8taZ6BbBjGBCouOWJTdxRejbXVynPptZm39gksQSsh
         CiMGCyKEiV9+QkTsdM+VTPOyM1tV0V8Q2vEZtjB6heNEUKNEbVMtDgFjMIs/wvfv3BJM
         9d3dpRKXn2Vu9QfV9Wt9SPJ5RnyXJc4679Bbtgi70bYkXLwUnn2M+ik/35Qe+0L36olz
         DyTxQ1Q89cUOr1u2bf3gsMy2o8o4XRspO0RfGHmzK26k8/UplSfxpBv9atpJjJQn2AnZ
         2OuQ==
X-Gm-Message-State: AC+VfDxfH/s5ZuEzwK4twMfq5ZYT6VOyFxMt4VqXK8TzGq4aup/lJbxy
	WSkccUbofh1WP4Dwxm2Pc5Cnr061eDMGzUyK/k5oWzT3pDULu0QknAc8gMrKlwwlWsdWHwux7Q7
	mWliPlcAUNyTrfb990FEvOEZX3A==
X-Received: by 2002:ad4:596b:0:b0:616:5c8b:59d with SMTP id eq11-20020ad4596b000000b006165c8b059dmr6197886qvb.20.1683053346397;
        Tue, 02 May 2023 11:49:06 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5Wy2JnTAhWuNet9cEToNtvnh6Rgxw5wsbBieiyINBFnufP8DZTowekkRqdmisuq2+jBHV9JA==
X-Received: by 2002:ad4:596b:0:b0:616:5c8b:59d with SMTP id eq11-20020ad4596b000000b006165c8b059dmr6197852qvb.20.1683053346170;
        Tue, 02 May 2023 11:49:06 -0700 (PDT)
Received: from fedora (modemcable181.5-202-24.mc.videotron.ca. [24.202.5.181])
        by smtp.gmail.com with ESMTPSA id y10-20020ad445aa000000b006057140e017sm9063235qvu.89.2023.05.02.11.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 May 2023 11:49:05 -0700 (PDT)
Date: Tue, 2 May 2023 14:49:03 -0400
From: Adrien Thierry <athierry@redhat.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Shazad Hussain <quic_shazhuss@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for USB
Message-ID: <ZFFbH7bH0pCDdoN1@fedora>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <ZEcEGJiikEC2wIVE@fedora>
 <CAA8EJpr27=2jAXbamN6J7yF+7G=L5Af8+XReB5UnFuihcEwMQA@mail.gmail.com>
 <ZEgV+H3yZLp48Dlc@fedora>
 <3dc6e993-bcca-4e0d-5aca-686fcc8b5b73@linaro.org>
MIME-Version: 1.0
In-Reply-To: <3dc6e993-bcca-4e0d-5aca-686fcc8b5b73@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_114912_588384_95BF64E0 
X-CRM114-Status: GOOD (  14.99  )
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

Hi Dmitry,

On Sat, Apr 29, 2023 at 12:41:39AM +0300, Dmitry Baryshkov wrote:
> On 25/04/2023 21:03, Adrien Thierry wrote:
> > Hi Dmitry,
> > 
> > > Semi-random suggestion, but could you please try using
> > > clk_regmap_phy_mux/clk_regmap_phy_mux_ops for USB pipe clk src?
> > 
> > Which specific clock are you refering to? I'm not very familiar with
> > those, in the device tree I'm seeing "pipe" clocks for usb_0 and usb_1
> > phys, but not for usb_2, which is the one that's causing issues.
> > 
> 
> Ah, I see. Could you please try adding the 'qcom,select-utmi-as-pipe-clk'
> property to the usb_2 host node and running the test again?
>

Thanks for the suggestion. I tested this but unfortunately the issue is
still happening.

Best,

Adrien


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
