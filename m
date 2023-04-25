Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AADCC6FD18
	for <linux-phy@archiver.kernel.org>; Tue, 25 Apr 2023 18:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wb+e6EyxsOsxDwq9GhOOcIK1Wh+n42gN88BvKKFgGI0=; b=2jHUxJvefIGdoK
	4KiO1N4aNzyt474PYm7+hpcvE2d/NmMeMJlt7hXPVVribdbN2s4URZdHvPNHFoM+JIrqnuhvk33ep
	GWTASOdck7UDdian7WHW5+7jTT9iATYYZcQ+b8iwynaGO4I04N60jS3qXomYjPj1EFLZRtUK5jFts
	IU1PRQaC8aRkJFazz6lyLhgERQ9HgMpV/f0V5UG3+FR4ZUfdH6IR0PfjWsnXk177iomB6lL3i/8g4
	gh0sFBh0WY/zYk+nmKgVeEiccT3cf7bdn4cDYluAYS95GyJ/f1D0kt3PeQy6EKIfBZzmE3hKj/Hdk
	ndG4E3N3v3Ys8VKAgWgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prN10-001u3J-07;
	Tue, 25 Apr 2023 18:03:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prN0x-001u26-0A
	for linux-phy@lists.infradead.org;
	Tue, 25 Apr 2023 18:03:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682445822;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mLRDaEM8IkNU4aroONTY8q5AePgj7Z5Af/7/yOM3ivs=;
	b=PevYoZejm0YZm0ADwPkEWjnmqEA3rxFksg3sHZmBKv+NrI9l4RpVSNh+PSKcP4fq3RGoUZ
	/YOwI73hlPiI0c3C2+yEB7CWabilX1qs48o1vglFh0QUxZx+nUkB42jdBFd61D2km8vR4G
	zb90gEFTT3p0CDGU8odTJ6CDZ1O6e6s=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-214-OOLmGhWpNL2TwZqC2498ag-1; Tue, 25 Apr 2023 14:03:40 -0400
X-MC-Unique: OOLmGhWpNL2TwZqC2498ag-1
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-74e12dd9c54so971823685a.0
        for <linux-phy@lists.infradead.org>; Tue, 25 Apr 2023 11:03:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682445820; x=1685037820;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mLRDaEM8IkNU4aroONTY8q5AePgj7Z5Af/7/yOM3ivs=;
        b=GYSHxZuU54zmuIHeXcJtArjxpOK0jOrl1yNt9adn2pU1EBKkIIcTqb5iJHbFVpn3Mr
         F/ioOTsHmvlIrsBOrlxi2b7vIUoUVIK43dBYldHxfQQ5V+9ElwsjyssvfTbm/Qw76/3f
         obRul/DW/u+El08f2gR5JB+mEz+P1v6u1RQjbyb2zUCdYFrpZ8FBeYiJZ6Xk6VSD4qXN
         Ijf+HMC6EMXqpRhsXQftTQqC+2L2FBZGMlF1CJ2wcYqgyWJUjsQxKr0PxXPVMmM2Je4e
         Un2H/r5oDea5rLQd2dsqVPkPqehqzvpu+QtW/o8lcEOhPsAgGSb6hmEMqd2x8uKeRgCo
         wazg==
X-Gm-Message-State: AAQBX9c0mmkrPjECgqCeT6IEIALN+aTxW5If2CmKFK9KZX6LqxYh9zht
	spABjwR4r619SlIIU34P3qO6zY2SEfuO/kclrkXQSV4NcmMDaW6mcztxUF4n1vnnlDmZl9d7xqo
	xYsmJ8mrdrsdGnvjzpR76RO6vPQ==
X-Received: by 2002:ac8:5c01:0:b0:3e1:59e8:745a with SMTP id i1-20020ac85c01000000b003e159e8745amr28268793qti.3.1682445820211;
        Tue, 25 Apr 2023 11:03:40 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZR+URkOBjqHmQb78faZMLxITsne2FMxrzysNlFS71f08K8wvOrg5C2bC9hBB1dS3N1M/UwJg==
X-Received: by 2002:ac8:5c01:0:b0:3e1:59e8:745a with SMTP id i1-20020ac85c01000000b003e159e8745amr28268745qti.3.1682445819878;
        Tue, 25 Apr 2023 11:03:39 -0700 (PDT)
Received: from fedora (modemcable181.5-202-24.mc.videotron.ca. [24.202.5.181])
        by smtp.gmail.com with ESMTPSA id ge8-20020a05622a5c8800b003e3914c6839sm1868947qtb.43.2023.04.25.11.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Apr 2023 11:03:39 -0700 (PDT)
Date: Tue, 25 Apr 2023 14:03:36 -0400
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
Message-ID: <ZEgV+H3yZLp48Dlc@fedora>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <ZEcEGJiikEC2wIVE@fedora>
 <CAA8EJpr27=2jAXbamN6J7yF+7G=L5Af8+XReB5UnFuihcEwMQA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA8EJpr27=2jAXbamN6J7yF+7G=L5Af8+XReB5UnFuihcEwMQA@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_110343_159685_186FCD5E 
X-CRM114-Status: UNSURE (   8.14  )
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

Hi Dmitry,

> Semi-random suggestion, but could you please try using
> clk_regmap_phy_mux/clk_regmap_phy_mux_ops for USB pipe clk src?

Which specific clock are you refering to? I'm not very familiar with
those, in the device tree I'm seeing "pipe" clocks for usb_0 and usb_1
phys, but not for usb_2, which is the one that's causing issues.

Best,

Adrien


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
