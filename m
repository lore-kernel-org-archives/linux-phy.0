Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC39AC48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 10:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLKdaC0J/NT/TTq78mja0c10ij6tiAw0cJ/zS4MBpsg=; b=Et2Ury0TiCbGIu
	sO+haO/cLHADchPBAsQ6oR05HGzDyub3yffpSUkpVEV7BcrwkKhO+OjuHKiR8wg3gtyuYEKpCNiK7
	ziwrJczgx9PcRwDdZFo8vMe8gL7wi+E2TMYjS2SG4DWmbIlBtS5idVGVElOWDmocrJVNOHMB2HcA9
	xrpXxCQMoPDug4kNMh3mNa3NTwF1JsVyZHqM5PdJkAeBKx6xLW8Iwocq++c6gSrf9bbt1r73aYZH+
	pFVmvffS4eTArOyZpWBPP1Bgc8LQNpZOih4Rtkyp0ECTt9lFDNEo6jJvQrgmKinM6/7oj08P3sDTR
	GzmEGEerX4nVFq9K3k2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNna-0000000EM0A-1UeS;
	Tue, 20 Feb 2024 10:56:30 +0000
Received: from mout.web.de ([212.227.17.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNnW-0000000ELyo-1sx0
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 10:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de; s=s29768273;
	t=1708426561; x=1709031361; i=markus.elfring@web.de;
	bh=MpJcVGRKO8AWBDMnssLpCilOGC18nfaO9n9RoVZq7VQ=;
	h=X-UI-Sender-Class:Date:To:Cc:References:Subject:From:
	 In-Reply-To;
	b=wC0uPW99wmHtcswlvxbPWW4Njo8pkzvI7Ov7Is/B95jRPoMy+GuKmIczMSgPsRhS
	 027Qj46J9Up1e7X10Fm3s03xd4xeAC+YzP5GoQcLYCNxHY0YU3pejL7NxEdL0/FAk
	 262n9loPfLR9hGFgrrPH8/wHs25gprGTJEHeKVVQ6/d8Ib7OBKRpliRYk4JJNz028
	 bdQAGRwIkUEVWujAmoj05rOkG/0UYGTyPUbJXN2R98q3uMYUMOKnLgSLI6mwpn0Uy
	 ys47+Pah0dxX36YEJcq8UYu7YyTmnwaRoY4hazeKndI836VUohji5zKlhh7+7cF9r
	 2ejmaIXDvc4Ufg8q9g==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.80.95]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1M7Nig-1rZ6Xk3SFY-007pjU; Tue, 20
 Feb 2024 11:56:00 +0100
Message-ID: <9ff4221a-7083-4cb1-abde-1690f655da8d@web.de>
Date: Tue, 20 Feb 2024 11:55:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johan Hovold <johan+linaro@kernel.org>, freedreno@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Bjorn Andersson <andersson@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Rob Clark <robdclark@gmail.com>, stable@vger.kernel.org
References: <20240217150228.5788-4-johan+linaro@kernel.org>
Subject: Re: [PATCH 3/6] soc: qcom: pmic_glink_altmode: fix drm bridge
 use-after-free
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240217150228.5788-4-johan+linaro@kernel.org>
X-Provags-ID: V03:K1:+nHgQKTeGuYog2KEpVvwroQxHKbVWgy4x84LyT/hTMOvc2YQpn3
 JDDJBBZ8e8iXt3Iuyj6UFT2vAkr8MqMibV6zXbFxjjJ4NonyB3VINxG4cgtMo5Xs7xuC6zv
 xHHA+wCH+zFVfPWvJKoIfdB4zOgAfy83sRz8V39oAy7aiZgIKyhsi1FhkeElCu/itLaX0BA
 SMxSEIL5gaOlUNFNP274g==
UI-OutboundReport: notjunk:1;M01:P0:t82oGWIlCJ4=;7+ho17LAUzbb+8jansfprRaT4K3
 tkXnZ69uYqQ9Yr40k/fxQ+39GLI67PzDy3fOhtM/dwhZhudfM1yJ0/5S/0chhwFJDnZDg/5tE
 WLLRz2kV+hzJGyd5QzcmOj8ppCN/PqNjdaaxl+adhWTYlFeVD2I0H1biUV+x6G8X/eAuv8FJE
 gtvkRo+LUdYlXJ7VXCC0TL7pWOUFbSSlwtgTGev7UuV/QpstPjHlkEbFmrjPtNV/5VAtXA8Uy
 5BeWc7XP34vuq1gxnS9HH4FAbxdrvKNpa8Z/RJBfwDkMxZs/5VJcFVa35xoGewZGULRXM1mls
 zylKnysUsrygin5x6Yf5ctYrUbSX5xXH/CSWGW+FCKqTHWLCWCMpJXZt8WhzTgXRjG4wE22lc
 2KiGFn13qGww9c4STZ4wdiEdzNsw9Lz6B7FV8CsOTYFIFPGZhAyGocdEQPaSreYPzWnjpLssE
 j/5AVYE/BucQ+TmeC3IhigE/ZENdm/RidjY3KP0PrA7KHUmbHAtwMvH0Mgor2AU27oQsgpyu4
 qQ2j2sJpeA+dlGJ6nl3nnYL+YqMt/kquiG8b84J3yWCf20cgvlJQGxTkr5Ng2rBkH8R4kiN6Z
 2LhBLA/PoMcUgapN+3qkrFzp/pA9v9gne94Zwk0eeBKmj6GU+rpp9bB0+1aytagEnWSmcoeTQ
 eUHAdUaujUH21M760THc9Iie0eSgXf1Wyqt1SKnjtA9WiabnkP3Ox67umd1gPHvj1c32E74EV
 EtKfp8P3OC9RQC9gsU50ImVehqLpOFlEq9Xck4pelKEH1vm8tT9Be+TFvlZptoNp20SmsIB1/
 aPcKF0oh2XFRsluKbBSulO5XmA0ZBHgzVFUXT7LAglKlM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_025626_784741_814CD635 
X-CRM114-Status: GOOD (  10.51  )
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

4oCmCj4gU3BlY2lmaWNhbGx5LCB0aGUgZHAtaHBkIGJyaWRnZSBpcyBjdXJyZW50bHkgcmVnaXN0
ZXJlZCBiZWZvcmUgYWxsCj4gcmVzb3VyY2VzIGhhdmUgYmVlbiBhY3F1aXJlZCB3aGljaCBtZWFu
cyB0aGF0IGl0IGNhbiBhbHNvIGJlCj4gZGVyZWdpc3RlcmVkIG9uIHByb2JlIGRlZmVycmFscy4K
Pgo+IEluIHRoZSBtZWFudGltZSB0aGVyZSBpcyBhIHJhY2Ugd2luZG93IHdoZXJlIHRoZSBuZXcg
YXV4IGJyaWRnZSBkcml2ZXIKPiAob3IgUEhZIGRyaXZlciBwcmV2aW91c2x5KSBtYXkgaGF2ZSBs
b29rZWQgdXAgdGhlIGRwLWhwZCBicmlkZ2UgYW5kCj4gc3RvcmVkIGEgKG5vbi1yZWZlcmVuY2Ut
Y291bnRlZCkgcG9pbnRlciB0byB0aGUgYnJpZGdlIHdoaWNoIGlzIGFib3V0IHRvCj4gYmUgZGVh
bGxvY2F0ZWQuCuKApgo+ICsrKyBiL2RyaXZlcnMvc29jL3Fjb20vcG1pY19nbGlua19hbHRtb2Rl
LmMK4oCmCj4gQEAgLTQ1NCw3ICs0NTQsNyBAQCBzdGF0aWMgaW50IHBtaWNfZ2xpbmtfYWx0bW9k
ZV9wcm9iZShzdHJ1Y3QgYXV4aWxpYXJ5X2RldmljZSAqYWRldiwKPiAgCQlhbHRfcG9ydC0+aW5k
ZXggPSBwb3J0Owo+ICAJCUlOSVRfV09SSygmYWx0X3BvcnQtPndvcmssIHBtaWNfZ2xpbmtfYWx0
bW9kZV93b3JrZXIpOwo+Cj4gLQkJYWx0X3BvcnQtPmJyaWRnZSA9IGRybV9kcF9ocGRfYnJpZGdl
X3JlZ2lzdGVyKGRldiwgdG9fb2Zfbm9kZShmd25vZGUpKTsKPiArCQlhbHRfcG9ydC0+YnJpZGdl
ID0gZGV2bV9kcm1fZHBfaHBkX2JyaWRnZV9hbGxvYyhkZXYsIHRvX29mX25vZGUoZndub2RlKSk7
Cj4gIAkJaWYgKElTX0VSUihhbHRfcG9ydC0+YnJpZGdlKSkgewo+ICAJCQlmd25vZGVfaGFuZGxl
X3B1dChmd25vZGUpOwo+ICAJCQlyZXR1cm4gUFRSX0VSUihhbHRfcG9ydC0+YnJpZGdlKTsK4oCm
CgpUaGUgZnVuY3Rpb24gY2FsbCDigJxmd25vZGVfaGFuZGxlX3B1dChmd25vZGUp4oCdIGlzIHVz
ZWQgaW4gbXVsdGlwbGUgaWYgYnJhbmNoZXMuCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xp
bnV4L3Y2LjgtcmM1L3NvdXJjZS9kcml2ZXJzL3NvYy9xY29tL3BtaWNfZ2xpbmtfYWx0bW9kZS5j
I0w0MzUKCkkgc3VnZ2VzdCB0byBhZGQgYSBqdW1wIHRhcmdldCBzbyB0aGF0IGEgYml0IG9mIGV4
Y2VwdGlvbiBoYW5kbGluZwpjYW4gYmUgYmV0dGVyIHJldXNlZCBhdCB0aGUgZW5kIG9mIHRoaXMg
ZnVuY3Rpb24gaW1wbGVtZW50YXRpb24uCgpSZWdhcmRzLApNYXJrdXMKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
