Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9A09CA0EFA
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 06:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZz4l6UNmz0pzqUtl5+doFE6ZDQ1+Dt6KF2pR9xD/LE=; b=d1g0uI/qHysHrN
	JEiHwl7AocowL+8Qnce7H6zO5WgGnh8MuFvpsdpmKAQeSfZWN0nfTwnmuOTIx++ZTme9S3ukcPEb8
	KPZERq8HrEHxsMEhnO0YVAfkyg9r6DJxx4KDP/H1cTYtK6qq0xK20og8ZO56q1tNb3HK2xypTO6Pw
	fMq0MlffnmFNehxuD4eiFc95B6RTFhHrgKKFYH4UX2N60iQL4OFmAcZ1f4N4Lkql/h+0iBjNFHJSh
	xFUJCsLt6zUbDbgq8Tq5gdt8aTwEkPlsW7e+WnNoUW7N3nIg/PGmEbSINNd/vZBI+stq40FXGR+8w
	BVmkXPl1Y+4gDQC1W7UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphkL-00000003wj0-0Jbp;
	Sat, 23 Aug 2025 06:29:01 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQkk-00000002SwO-16YR
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 12:20:19 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-afcb7a16441so306506066b.2
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 05:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755865217; x=1756470017; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+xkZUgl3H4hv9cLVhOUAUwY3EVtx+RdpSL2hivLR0Zc=;
        b=C6aIUuiWNbFoQB6UfrZzWquvLB+WaXrK7dIRPTtvT1HoWqVcZ0A1MEh+gMHldkXsb2
         cBIncuj6OXalCj24bWJ44Jy3NCV0MTLkhwNBEUXk2qyVGYUG4vBa+RGIrMp1xoGIAVen
         e3FKNIpxXYv+qm9EJ32L9SFTkaEjnw1827rJ8/gVxhRXDG57XCRhn9dwwvlE4AXCtTO4
         P0JXJKiABhfujscitnjB3pJItRosN/y3YtZLygXeIVCW3HDsc5FetA06MQIMdakh3yOm
         LLgnR4MyPcbPECFPjEcsbic5OkKoxRFD+W1d0OWcy7dDUKl+pOmIhSU1XwUKWpeEHfAn
         yFPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755865217; x=1756470017;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+xkZUgl3H4hv9cLVhOUAUwY3EVtx+RdpSL2hivLR0Zc=;
        b=vPyVfyQBlyS1TzK9Pfv9xXtf+DPPnUlAszm83H/2ymu+Q3yJ6GvWnShjkcJlslvi7A
         weiRr2uR/aPgk7h23dE4wzTcfP8U3pJSm4C3jR6K3DLTq8xfdY4wNUZcS4V5Ba4S/fHh
         hF8nt0hMP2o8kz+a0mL3fCnrH+pNLTcL26faXAKTTrNXC8dB0DNgOoLOhomYmHxA5Q6I
         dxxz4tJKVqxx+y/Z5ck/HZGc9qWe1wNB28vbfEv1eBRQeAhBTAp0Fcri0fyzPZSlj6i2
         5RyDuJabtBYMadwTmTeQzEkIsu+lvAIRIuy4xY8lywycgxJWDjbAkgqhFtL1X41jNuYi
         vswQ==
X-Forwarded-Encrypted: i=1; AJvYcCVw92nGGGsUII2Bbp2VO4AnM0grTY82XMkCgvc+k84lNAVdnrlBj6BLnb0KWizbwYcBlRHDJqMa8A4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxYN3amOEVx1gEkKdrnIF7M9zj9LRvCHo4LbqEiwKFsK/WALDW4
	hqeqMX2x27aMwo2bC9bmNPDygXjxRKcrlpWjFIHf9w91zZRcDV1dVGvk4a2NeU8G8Rw=
X-Gm-Gg: ASbGncsYbFRgAw1E3pzkwLB2KvjEZzuygl0PSujtUdMNQacQpcpS9NksjO0+pNN2Nxg
	LVacRKqm7PwlQ5B9gFTUcY3qSub7S6bQHf84DSMa0BlKnvwEASFdrzY5xCyRhXEM+/IcLXlbYTL
	sk2B7wAK3Da2kxXrLf4iJpAMzuStsoGSDhVzZKha0do4AoUhucV+ff04a2fvYLXEjbixD/7Fl5q
	Z1e0XuN+9YXIWdTsYLts8kDXnTzlpqtVtAz9lWp33GVGM4H+D/8eu8jSFIu6GLaQ/yU2C15NLaK
	fiQW+t7OBRmY/JeKW1/Zb3JC/NxPoeQ5FxO6Sla/RFJ19BaVvyyh2krCBoiJSgnQMiwNXolOq/7
	co+sN8jSneVShTJ0HBBNnE6f79GSYUbRJMH1yUbNUZR56
X-Google-Smtp-Source: AGHT+IH5MaDGOj90Ebe5kfSzujnkbY69jrqA+f32eLf+heWKCPnDNRvGCa6CIbti/l7iOXpa0qJl/g==
X-Received: by 2002:a17:906:6a1c:b0:af9:9ab0:6f3a with SMTP id a640c23a62f3a-afe28fd7ec3mr252586066b.23.1755865216613;
        Fri, 22 Aug 2025 05:20:16 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:63f:a353:7a5a:5beb])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded4cab98sm604993966b.89.2025.08.22.05.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 05:20:16 -0700 (PDT)
Date: Fri, 22 Aug 2025 14:20:11 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <aKhge2ngLwj4uhmC@linaro.org>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
 <aKhYYjUuOQ7H1aPm@linaro.org>
 <26j2trl7lypmqzjnw6kwgqz32eqcags34qpgaua7zbwxd4lbgx@n54gemj42xbd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <26j2trl7lypmqzjnw6kwgqz32eqcags34qpgaua7zbwxd4lbgx@n54gemj42xbd>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_052018_315050_56C34FE0 
X-CRM114-Status: GOOD (  26.89  )
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

On Fri, Aug 22, 2025 at 02:57:24PM +0300, Dmitry Baryshkov wrote:
> On Fri, Aug 22, 2025 at 01:45:38PM +0200, Stephan Gerhold wrote:
> > On Fri, Aug 22, 2025 at 02:01:30PM +0300, Dmitry Baryshkov wrote:
> > > On Thu, Aug 21, 2025 at 03:53:28PM +0200, Neil Armstrong wrote:
> > > > The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> > > > connected to the third QMP Combo PHY 4 lanes.
> > > > 
> > > > Add all the data routing, disable mode switching and specify the
> > > > QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
> > > > the underlying DP phy.
> > > > 
> > > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > > ---
> > > >  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
> > > >  1 file changed, 44 insertions(+)
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > > index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
> > > > --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > > +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> > > > @@ -62,6 +62,20 @@ switch-lid {
> > > >  		};
> > > >  	};
> > > >  
> > > > +
> > > > +	hdmi-connector {
> > > > +		compatible = "hdmi-connector";
> > > > +		type = "a";
> > > > +		pinctrl-0 = <&hdmi_hpd_default>;
> > > > +		pinctrl-names = "default";
> > > [...]
> > > > +
> > > > +		port {
> > > > +			hdmi_con: endpoint {
> > > > +				remote-endpoint = <&usb_1_ss2_qmpphy_out>;
> > > 
> > > Please describe the transparent bridge too. It can be covered by the
> > > simple-bridge.yaml / simple-bridge.c
> > > 
> > 
> > I think this isn't the case here(?), but how are we going to handle
> > devices where we don't know which bridge chip is used? I've seen at
> > least 3 or 4 different chips already across all X1E laptops and we don't
> > have schematics for most of them.
> 
> Open the case, inspect the board, identify the chip. Everything is as
> usual.
> 

The chip might not have any visible identifier. :-) But I guess there is
no point theorizing about such potential issues now. We'll see. I agree
it would be cleaner to have the bridges modelled.

Thanks,
Stephan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
