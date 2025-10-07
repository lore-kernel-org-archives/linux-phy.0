Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBD22CCA476
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 18:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3yv1hOPPJKcyFLwvEx6pH0BsKhvir4X/zyjx7DNlTuM=; b=NHJM1jpOMKmEBo
	dsG1/QoeZBusYBkys7GlSowVxRG5359LIQx/J0H+5sZisv2+0nVy/bUSYlTiBK49Se164u2Ul6X+5
	H61MW9jcm0o94Uhb3jPC3mL4U4Net0LEMsrxCjQaFizika47C5ZbqlK3Z5HY5I90aRifJRCcCWayO
	S/gyy62pFAb5Bm+52i8Z2fc5JzZiTq9IHg53jKWiUtEbpbBVAf8+LGVCvEVts1wV0IKF4jqIH4VuN
	JycHeNVc6h0hhMA4vasa4gY3mFo1jC3QtddOq/Xm2k1RO9rS3tnHtkJpeoR6LQ3wvXeYsHiD1ginB
	PC+W976ySNbfrotm0pRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6C7B-00000002XTj-2n3N;
	Tue, 07 Oct 2025 18:08:45 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6C79-00000002XRt-08m8
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 18:08:44 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-b49c1c130c9so4307401a12.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 11:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759860522; x=1760465322; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kL83avgkPvebmqUXatcd7knV9g++K69fYPgzIIAyVds=;
        b=nj32UKLeGbIrnD/dK83EtGuGw5tdqmUi3zEAKq32YhaaUmyjwiBPK/Cw4b25mHHOtk
         oNlysTeUlo+wmat3pbpbyvbc5ata6HLvM5Z7VUjRQS/9kAiV2xidCX/K12uMRMot3kIg
         IDI1J9tnRAbaqAY84Ebrx7cKBqBADLOOCjokHfpWJAtXfuBVegRtjNmmPxSko9Lp87aj
         ATWm1vcyB/HyvLMSKRBQGHkFXCnKXk1JADypU5JGbNV43c8QaCmXUpvsknBKdWByYFbQ
         LnrUsM4Y3kFzLNLwOCaaPcqKpFUJ+cl4BG8ETRhZ4877T6guUZstMMMtZPEH2Efi83vw
         e4Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759860522; x=1760465322;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kL83avgkPvebmqUXatcd7knV9g++K69fYPgzIIAyVds=;
        b=aEgGEAcRRxJE9yG4MJsRodzAkULNoJTNyvCPw3KW78Djvd4llteXKITMQkYfDLDovr
         twa+PQ7tl3NcrjmNCmu49/lNiRAc/4nUvrUgPDXM8LanXAWG6UhCToPLL9fYT/FSDpFX
         F5afqIX/hEYXtNTFDZirPTQgwG689DCjgArrvkVCHnYhk0zwd6cB46n8m/eE7Q8XmlMa
         cZ7sTLB25vxOww7Yud5cao3rwnQGjxQCUQC/WGvg4YbGWLIIsb2o33hhUKCJP4p9HML/
         irkchO9Qv50SydXyyiImdkH5jPZog7WKBFj9okKlsp9u2mCExbEmvAed5hW5cPdr2Jwv
         tmVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeOP7FIVj0JyM4O5Pioo2WQo93YbMhChnFtb4R2/YSbSRTr/lj6HpzxJHNpXLfvGU3U1Vcn1V9HeQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPzE3zgoJW4ztb9fhmm0pgPC/ehUw6HNVJC6BsL/UP3jRYizK3
	wiISfpEklXyBTpZV75k7Jc7FwkLuxezm2ooobHsJ0FfyfNmGUxezbeaTFHxw8c9ZJSiGjRt+PTJ
	C2K9Q8/1obj8D0Fg0y+V6HDN5N5+UDjUaM9vhjgIy
X-Gm-Gg: ASbGncuJsa9TmLi53OTEG1p8Fd9nhUtb7XrB/9F0F7SnFAbCGnP3kSOWJoUgi+MNziG
	p01DuflFmaSPhds6a49HiAYR+KrhArlD2WM1plsyrYghIJ7sq+IOvbMTodcOCJEc2FcLPKFv79b
	Jp3UtpwVavW7HLy0KNA9RvhBMKetiHHOvnqWoWHcEFEqmscGXWbCeEqCfTbXVwbqUy0CelvnZwX
	K9N2jcRIaNLzvuGdNERUTp52/LLQrbeX1JIPePghgbEgWSmjjKc0aGruWowMIZnDQuZ
X-Google-Smtp-Source: AGHT+IGS0kErmJQEsnmkmk3f/fOEYFz/5xrVmbiZTV6hLQvnRLUwNPn7W+mzTIzummLCCaPUbPxoaoxxuABS/7SFA1s=
X-Received: by 2002:a17:903:46ce:b0:27d:6f49:feb8 with SMTP id
 d9443c01a7336-29027238ecemr7876345ad.16.1759860521582; Tue, 07 Oct 2025
 11:08:41 -0700 (PDT)
MIME-Version: 1.0
References: <20251006232125.1833979-1-royluo@google.com> <20251006232125.1833979-2-royluo@google.com>
 <5c2c298b-b0c3-4fa5-97aa-75b44084248b@kernel.org>
In-Reply-To: <5c2c298b-b0c3-4fa5-97aa-75b44084248b@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Tue, 7 Oct 2025 11:08:05 -0700
X-Gm-Features: AS18NWAJZttVCngV-whwmJ2b6zMeUXBnJ2src5pRyz7OavFl88Fb6cD_LbEK-Hw
Message-ID: <CA+zupgzMmgNA3uJiHSCY=5GqYf1RcSBdniJeo5VQnUnsyzY1_g@mail.gmail.com>
Subject: Re: [PATCH v1 1/4] usb: dwc3: Add Google SoC DWC3 glue driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_110843_073914_573BF044 
X-CRM114-Status: GOOD (  14.58  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBPY3QgNiwgMjAyNSBhdCA1OjQ24oCvUE0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDA3LzEwLzIwMjUgMDg6MjEsIFJveSBMdW8gd3Jv
dGU6Cj4gPiBUaGlzIHBhdGNoIGFkZHMgc3VwcG9ydCBmb3IgdGhlIERXQzMgVVNCIGNvbnRyb2xs
ZXIgZm91bmQgb24gR29vZ2xlCj4KPiBQbGVhc2UgcmVhZCBzdWJtaXR0aW5nIHBhdGNoZXMsIGhv
dyB0aGlzIHNob3VsZCBiZSB3cml0dGVuLgoKV2lsbCB1c2UgaW1wZXJhdGl2ZSBtb29kIGluIHRo
ZSBuZXh0IHBhdGNoLgoKPgo+ID4gVGVuc29yIFNvQ3MuIFRoZSBjb250cm9sbGVyIGZlYXR1cmVz
IGR1YWwtcm9sZSBmdW5jdGlvbmFsaXR5IGFuZAo+ID4gaGliZXJuYXRpb24uCj4KPgo+Cj4gPiAr
Cj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIGR3YzNfZ29vZ2xlX2Rldl9wbV9v
cHMgPSB7Cj4gPiArICAgICBTRVRfU1lTVEVNX1NMRUVQX1BNX09QUyhkd2MzX2dvb2dsZV9wbV9z
dXNwZW5kLCBkd2MzX2dvb2dsZV9wbV9yZXN1bWUpCj4gPiArICAgICBTRVRfUlVOVElNRV9QTV9P
UFMoZHdjM19nb29nbGVfcnVudGltZV9zdXNwZW5kLCBkd2MzX2dvb2dsZV9ydW50aW1lX3Jlc3Vt
ZSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBkd2MzX2dvb2dsZV9ydW50aW1lX2lkbGUp
Cj4gPiArICAgICAuY29tcGxldGUgPSBkd2MzX2dvb2dsZV9jb21wbGV0ZSwKPiA+ICsgICAgIC5w
cmVwYXJlID0gZHdjM19nb29nbGVfcHJlcGFyZSwKPiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGR3YzNfZ29vZ2xlX29mX21hdGNoW10gPSB7Cj4gPiAr
ICAgICB7IC5jb21wYXRpYmxlID0gImdvb2dsZSxzbnBzLWR3YzMiIH0sCj4KPiBZb3UgY2Fubm90
IHVzZSBjb21wYXRpYmxlIGJlZm9yZSBkb2N1bWVudGluZyBpdC4gUmVhZCBzdWJtaXR0aW5nIHBh
dGNoZXMuCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCgpXaWxsIGNoYW5nZSB0aGUgb3Jk
ZXJpbmcgc28gdGhhdCB0aGUgZHQgYmluZGluZyBwYXRjaCBnb2VzIGZpcnN0LgoKVGhhbmtzLApS
b3kgTHVvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
