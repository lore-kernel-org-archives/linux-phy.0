Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04329CD128A
	for <linux-phy@archiver.kernel.org>; Wed,  3 Apr 2024 13:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aq9lFqtNyMBpYrPPIcPwN54gB4PycOKvrXVMiZRu7Wk=; b=mw5+n5lSpOUyoE
	HKW9qxo1KgaAMWd08IvGVhM4USZzmL0AdeQhQVj6kSV/SzuRp00sf4kd1wHc5TK4NwdKdIl9NJknQ
	oQh3NY0XIewjuoYf8KEocci7xzFaWxQpJZSC23I4EI9tsx4mvel+AQPhDsEXI6bzbb3eN6urbuIOw
	Lcdorj7ZtFc5bSQYNh7zGitewI8hq5wfyJURyoU3Rw7YRLnLED78ZvY+fTiJe9CAClTwL8xcRGwv1
	R9R9Dg7Nl0lSniCvWtV3H74Rut8MdTR+dc5m+eNUDFlFIWMHbqcn4cZALDioBrRSSRmFMEAnIpmO+
	R7LDVPIzsuUwyr2mRxWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs148-0000000GJxF-2QVu;
	Wed, 03 Apr 2024 13:54:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs146-0000000GJwA-2akz
	for linux-phy@bombadil.infradead.org;
	Wed, 03 Apr 2024 13:54:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=1OAL06Mg2B7p2mgKMtF0umqm+s4wnDWvZ+hhRFE0Zzo=; b=M9voQbOO05EBbYmyW54Pr8hqA2
	3fWtJ0GXVVIAHHfnlrO7pmS6G4rwt7/ijgkSGSJlykYu8/SlKAURGoqssqjV6vhBScvZqNVD6LG4y
	3JX6G+rhQEp6TyYt31bwD5Y5chAb/hjsnizAgWfupVvMMhPbHkvV5V6ApdAFkPRmrLH8VQMqCaEC+
	FNTVwxcTOut0ryCdjdmgIw/wtTSMwA5RqtLoTA0x8P8eXLI46iP9UgeZDQ8EJpQ5tIc46S9Ck3h/y
	7WKBGJmH+266td8oP5od0C+MgbK+LeEVdxQDqQFLDKCkonfMZooUQq+eOF5HKZs++P/hB+j/3P3zM
	bWcitUNQ==;
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs143-00000004FSC-1dV7
	for linux-phy@lists.infradead.org;
	Wed, 03 Apr 2024 13:54:09 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-5a480985625so4155203eaf.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Apr 2024 06:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712152445; x=1712757245; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1OAL06Mg2B7p2mgKMtF0umqm+s4wnDWvZ+hhRFE0Zzo=;
        b=p5OlFM0ZfSSnbEQISdx4uI9UazXQJkB8WhAi7Ep+lLiKMjy/6FvFmO6mj13ahdRHqm
         vsCV8Hjf32NOSjEnlJFLsshMgb+KIIl1jIbP+nyJqzwOBxMxQUZjFrdXZjcUn6zJBfeE
         PlFUWdtq32rty6zo3VUfc672JsjYirNNq0wQ9Itnlyo6SEiMtGKDXdhzqwIz87IKA7kZ
         PimhiHmRw3P3QVc3XRH8toiDCU45UfnmcHSajXkV6APAQV/aWf5Mktuth1Ic+toooBgv
         dbA0NCxWycHwHuhs7jMDPkwpGGawMvHBgiZMqTTnruyVWDxvziL2cIsSxbAVgPOoT5wx
         JUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712152445; x=1712757245;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1OAL06Mg2B7p2mgKMtF0umqm+s4wnDWvZ+hhRFE0Zzo=;
        b=P4lX3GQwjsxcRt/1mVdnabQ8Zb9QDqld/WqOYL1GFEDWDL37DwiDqpAu/zqYguuw4h
         wcFNVRtusKXzwHiR52rnB06PJQnbrCkPBMNOt6s7+9r4tPLMkziMYh04FqhpMQpQv7hd
         t+EpwetM9PwPUWPHxayzIcLMa2puiTumDtgIxIStFHyNmY0PvZJMnYESqaRbxnIj7Syx
         tC0Y3HlQDNuH4BCupHviaPPjqihlm/OXOeBnzixoHyaRuigkmTSPnJ7Z9egFmfWRcQ9P
         +WbLeuysXbxum+lE1DDZVqHD1kWxj08G7xRAp+5BRdTApu/Cqn1kA/ctTh/2gwl7/T5q
         ITEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVQJsf0oSeRMQav2gOhWq8SuiKIobJZ01/WxJM88hG/Kgl+32atiHN3HrNySG46t9DjQ5uN9qogUY6zXSyLalfF0HBGse4/Q2oDx4zZg==
X-Gm-Message-State: AOJu0Yx24ej03cMaYLUBAmQfEbFv3d+0oDd66v78g8IFHXVAZAfGI5sS
	PhW0AP+znOZXsomp3jvdS8bf2Jh/IvfAA+GUAisGJz9PENRKBbln/KjnbJWoqA==
X-Google-Smtp-Source: AGHT+IF03w0jcECjD5j3s8soEBtUEIJMV7AING8b0+KbubR0veAvTNYHRFP+TmHHg+oq53dMCQ1BVw==
X-Received: by 2002:a05:6358:9486:b0:17f:7807:3204 with SMTP id i6-20020a056358948600b0017f78073204mr19114172rwb.25.1712152444401;
        Wed, 03 Apr 2024 06:54:04 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id dq8-20020a056a020f8800b005f3d54c0a57sm2081588pgb.49.2024.04.03.06.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 06:54:04 -0700 (PDT)
Date: Wed, 3 Apr 2024 19:23:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	cros-qcom-dts-watchers@chromium.org, davidwronek@gmail.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qmp-ufs: Fix PHY clocks for SC7180
Message-ID: <20240403135359.GO25309@thinkpad>
References: <20240401182240.55282-1-danila@jiaxyga.com>
 <20240401182240.55282-2-danila@jiaxyga.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240401182240.55282-2-danila@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_145407_568522_DBF90D94 
X-CRM114-Status: GOOD (  14.88  )
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

T24gTW9uLCBBcHIgMDEsIDIwMjQgYXQgMDk6MjI6MzlQTSArMDMwMCwgRGFuaWxhIFRpa2hvbm92
IHdyb3RlOgo+IFFNUCBVRlMgUEhZIHVzZWQgaW4gU0M3MTgwIHJlcXVpcmVzIDMgY2xvY2tzOgo+
IAo+ICogcmVmIC0gMTkuMk1IeiByZWZlcmVuY2UgY2xvY2sgZnJvbSBSUE1oCj4gKiByZWZfYXV4
IC0gQXV4aWxpYXJ5IHJlZmVyZW5jZSBjbG9jayBmcm9tIEdDQwo+ICogcXJlZiAtIFFSRUYgY2xv
Y2sgZnJvbSBHQ0MKPiAKPiBUaGlzIGNoYW5nZSBvYnZpb3VzbHkgYnJlYWtzIHRoZSBBQkksIGJ1
dCBpdCBpcyBpbmV2aXRhYmxlIHNpbmNlIHRoZQo+IGNsb2NrIHRvcG9sb2d5IG5lZWRzIHRvIGJl
IGFjY3VyYXRlbHkgZGVzY3JpYmVkIGluIHRoZSBiaW5kaW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IERhbmlsYSBUaWtob25vdiA8ZGFuaWxhQGppYXh5Z2EuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2
YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgotIE1h
bmkKCj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFt
cC11ZnMtcGh5LnlhbWwgICAgICAgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcWNvbSxzYzgyODB4cC1xbXAtdWZzLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11ZnMtcGh5LnlhbWwKPiBpbmRleCA5
MWE2Y2MzOGZmN2YuLmE3OWZkZTlhOGNkZiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVmcy1waHkueWFtbAo+ICsr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1x
bXAtdWZzLXBoeS55YW1sCj4gQEAgLTg2LDYgKzg2LDcgQEAgYWxsT2Y6Cj4gICAgICAgICAgICAg
IGVudW06Cj4gICAgICAgICAgICAgICAgLSBxY29tLG1zbTg5OTgtcW1wLXVmcy1waHkKPiAgICAg
ICAgICAgICAgICAtIHFjb20sc2E4Nzc1cC1xbXAtdWZzLXBoeQo+ICsgICAgICAgICAgICAgIC0g
cWNvbSxzYzcxODAtcW1wLXVmcy1waHkKPiAgICAgICAgICAgICAgICAtIHFjb20sc2M3MjgwLXFt
cC11ZnMtcGh5Cj4gICAgICAgICAgICAgICAgLSBxY29tLHNjODE4MHgtcW1wLXVmcy1waHkKPiAg
ICAgICAgICAgICAgICAtIHFjb20sc2M4MjgweHAtcW1wLXVmcy1waHkKPiAtLSAKPiAyLjQ0LjAK
PiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
