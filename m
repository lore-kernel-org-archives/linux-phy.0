Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57B51C7EE24
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 12:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYGbnjq85yqdjE/zUDdgU7VYz7Md+mZsSWNh7xCsAVE=; b=Z7wRhUVNx4rTdy
	fIyztrTFiAhUWMtqWb2tYvayr27Mf2LCnYVnsb3LfV8nrGDCixKKhlDS1PaVDerHdFXLs5yMavYPN
	+QtmlO5nXB0/BzkjJhTO2QebmxOdslAOc3CysQQfaWh1EjZOuSLELK2Owts+itieLk4zNIhN4+Jvh
	/nobhDRZfIBfszfzVGfjjP314yjWKrBpk5eCtA1mg6Vj9psrC2aELUFRdmEhA3LMiQ4b7fLE08OCJ
	a0/t3GzXu1htUgh81V4MmayqbXDYlNygkMzfnoZS9UI7QbK3ghp4MzAqgou3xh18S7BTvL15k4Bnm
	J67EKgJLSjl15JDwoGqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptSyg-00G23x-3C;
	Mon, 01 May 2023 12:50:02 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptSyc-00G22T-2p;
	Mon, 01 May 2023 12:50:00 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-95678d891d6so518075666b.1;
        Mon, 01 May 2023 05:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1682945393; x=1685537393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xWw1hTARmw+jKU6qPnbINzsea7Kkb3XA4GzRY4Vsapo=;
        b=lnSFi3HO3I7Cjd9eGoIl929JDiL/FMATuuWV4zVIETYzfB2SnwJob1osiu713IFDpc
         HVrPoP+1/gifg6H+Za43d6XMRU4zkL1hSgb9TDald3pA7XHiyr3PW3PlfeKWybenZUts
         OpupoIem6trMp2RlJmCK8CPcB/yO+ckzyvy6/2FW8WAzEuViJo698b49g0JQbf+6x4Eq
         bLKw0ZrcMRAxGh2cxNKK9U9cngh99GGksfbB0iDQi+CavYzzcow7KEPe8CYE7ddZ7b09
         77dlysqi828fEF3v3KRqKCCkd3CNx6FClRE/0xI/KuapVgblQ/hmsvWviEbmAOea4emJ
         hNeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682945393; x=1685537393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xWw1hTARmw+jKU6qPnbINzsea7Kkb3XA4GzRY4Vsapo=;
        b=JJhJQ8ZpVhqsjelHhmk6xwv9LqSBX7WMdk2Of524lqnC7mPJAfF5uYvmWK328zZ33j
         vdxvvcqiYwm9RtAF2B3J3njRKYOGKpfP7JLOntDRROP8NFKYZOYXjFPjknnyjYdGatQC
         qWqIOKW3b1kbugt46nwuWk5Aq7BONSSHWTuTmt8hcR5fzpemS/HMp1mF4XIVdu2wSfVF
         1cbt3iSVjn4NZvMBLNiz5TBUbKNV5qjfueVCe1VEuYjL13D2TGwtg1iLoW9qabMKyWMw
         IMk9cnYYk3MhfkvQ7PwythAVAioZl2rQKpBfoXIxux6zfu8F2oMEGO9K9HA4KvwN9BBE
         ctcQ==
X-Gm-Message-State: AC+VfDyJ5W8J9msG1cxLa3UoaCL2fCTbw//xASS9Qg/EromXBIzEbaH0
	Bb626nOf3nthAcFZP5D1yK8oUjKoXrd3iWq6hKo=
X-Google-Smtp-Source: ACHHUZ7XHHWAxWxgus3mXZZUFeWxirj8s9hcNpD+hHK7EQmccGNvepW2l2c5bOsbsB19SYSwVrJvXeMQs3jsnE8886o=
X-Received: by 2002:a17:907:c2a:b0:961:b0:3dfd with SMTP id
 ga42-20020a1709070c2a00b0096100b03dfdmr9809713ejc.7.1682945393457; Mon, 01
 May 2023 05:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230426102922.19705-1-ddrokosov@sberdevices.ru> <20230426102922.19705-2-ddrokosov@sberdevices.ru>
In-Reply-To: <20230426102922.19705-2-ddrokosov@sberdevices.ru>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 1 May 2023 14:49:42 +0200
Message-ID: <CAFBinCA+-RXGOzF=Z7kdY3Ct5uME5qcKJ1BJoXJwdjs8_qiByA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] phy: amlogic: enable/disable clkin during Amlogic
 USB PHY init/exit
To: Dmitry Rokosov <ddrokosov@sberdevices.ru>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, neil.armstrong@linaro.org, 
	khilman@baylibre.com, jbrunet@baylibre.com, mturquette@baylibre.com, 
	vkoul@kernel.org, kishon@kernel.org, hminas@synopsys.com, 
	Thinh.Nguyen@synopsys.com, yue.wang@amlogic.com, hanjie.lin@amlogic.com, 
	kernel@sberdevices.ru, rockosov@gmail.com, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_054958_918338_72DBB634 
X-CRM114-Status: GOOD (  10.02  )
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

T24gV2VkLCBBcHIgMjYsIDIwMjMgYXQgMTI6MjnigK9QTSBEbWl0cnkgUm9rb3Nvdgo8ZGRyb2tv
c292QHNiZXJkZXZpY2VzLnJ1PiB3cm90ZToKPgo+IFByZXZpb3VzbHksIGFsbCBBbWxvZ2ljIGJv
YXJkcyB1c2VkIHRoZSBYVEFMIGNsb2NrIGFzIHRoZSBkZWZhdWx0IGJvYXJkCj4gY2xvY2sgZm9y
IHRoZSBVU0IgUEhZIGlucHV0LCBzbyB0aGVyZSB3YXMgbm8gbmVlZCB0byBlbmFibGUgaXQuCj4g
SG93ZXZlciwgd2l0aCB0aGUgaW50cm9kdWN0aW9uIG9mIG5ldyBBbWxvZ2ljIFNvQ3MgbGlrZSB0
aGUgQTEgZmFtaWx5LAo+IHRoZSBVU0IgUEhZIG5vdyB1c2VzIGEgZ2F0ZWQgY2xvY2suIEhlbmNl
LCBpdCBpcyBuZWNlc3NhcnkgdG8gZW5hYmxlCj4gdGhpcyBnYXRlZCBjbG9jayBkdXJpbmcgdGhl
IFBIWSBpbml0aWFsaXphdGlvbiBzZXF1ZW5jZSwgb3IgZGlzYWJsZSBpdAo+IGR1cmluZyB0aGUg
UEhZIGV4aXQsIGFzIGFwcHJvcHJpYXRlLgo+Cj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IFJva29z
b3YgPGRkcm9rb3NvdkBzYmVyZGV2aWNlcy5ydT4KUmV2aWV3ZWQtYnk6IE1hcnRpbiBCbHVtZW5z
dGluZ2wgPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
