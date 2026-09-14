Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2953FC88E6E
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 16:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjyLlWpixRu1jsUxc8bu8TlM69lH4RGbkgcjprU2tsE=; b=CpOpNRIi/KXxes
	HN9w3PA/PNa/bHON61ZQdn1yRBtJ2gcNIs4lum8lm5x5o0Tsjhoz00+0fjhsGRzSqt0K3eOOZT8kW
	KtzqnXJPLx/Jm7E6CZaGTqNyxfhIE5/zFFjDaW9uG7j7EEezwmHV934i6eongozNeXBd2r8gdrOts
	feHoYyWKhUcNltK9aR2r5ijO1PN4sZ6BM5/ktdvPEeXWflL/Om8bwLYDfIMYgYBcygLTABhL60fEe
	nwSloFoXKZebIWRudCiQE2AZOzooR5Lr84KcfRw6ycpmd3Q/7a70GtlbmXx/ShvRTTYbSUbxGvvqp
	nNKOGWXOePFfG/umgRDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x696W-00000004FJQ-30cY;
	Mon, 14 Sep 2026 16:00:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x696W-00000004FJ6-1cb4
	for linux-phy@bombadil.infradead.org;
	Mon, 14 Sep 2026 16:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=XRYbluNPP8AMPvjs11ldgv62V308J1KXRstC2EzoBRY=; b=F9OS0gnTdcwx6c7j/3rMyp+62x
	llTX24AQIauYhhHSpmXuXFYFCKBojmduRnP+wUqHFrzY/lJChpLlnWPm9aFz5ySJZ1NaLQUZVBIhx
	l6pBypujPS273LEgsc4Ri9Nluy8S2ysKDIKSVjH210yBEioaeHAzzoxCxH3VFBd/Hqdz2pROzAypL
	0wa8nLwj9tdMJf9v+HOn9cgfTaQ5Hz0LMMTawrVD8n3IJYxsGMcuJGmjPEszSDDddgiOj+sUWfc48
	0Fop1QL4Cy94NPtkkRWbPh4m8NlrqRApyzjFAGBvLczE3I2b+wWS47AiZvTygxXMjr8FRxqsoMeTm
	j1SYCa/A==;
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x696T-00000005oUi-29Sq
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 16:00:23 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-c253425b253so546569466b.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 09:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789401619; x=1790006419; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=XRYbluNPP8AMPvjs11ldgv62V308J1KXRstC2EzoBRY=;
        b=hN9Y2HB5TZBbs5TOxf6itUwITwxSu+ORH6viokQpWvv0Shv3G8HH1C8vGJ14D2cU3V
         in7Lgz1a9EBQ7trQfaKnaaqQOspCOHRlEyauEOYUTo04NNsTiZe1mcVen3D0ZW2/ExQo
         74PHAm6JDoupGfYQYRk+Bbmxw59cv0r6m4ccPXGE3UamviT9dYDK3m9bvqz8+lXjnuJ1
         lszvLZR4LYB5aNAJTMUEVJf3CMs7M1qwU7f1aFkeDdfT2ezpQKdlkQbkakYcjPVjBK9h
         I9KStugpgvV4UiaarU0Jppu4SnJI62WBOpPVs5/oay1rw108GA3qOQAIfgVm9LdyTU0S
         U11g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789401619; x=1790006419;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XRYbluNPP8AMPvjs11ldgv62V308J1KXRstC2EzoBRY=;
        b=p8wWUAX6W5uaKuti14hKBN4iUGDFWH1SYqeP+sRRSvhBcOawJvvsh+gr17DuxHIvjE
         +LlPPGB35SvjzXp41xbcb4nAIGOhEMpLKcX+tjVc8Z7F+EoixKVuVGSh3QL5KTv9+Yh3
         oPErq2RvBwCfDAcxQ+Kq4lvBX9BTn3hn5atEfJ69H4b9qL3Ty9vdIz8UTeJMRGU2ysAE
         I4POlDQTulVoPVo6QNN+AXHGY95tXvWtptTuFK6dfbHwgSU3GDNwd31ZB3RSsFBR+vgI
         aeIOjsUWza8YnWD9XEgnWFG34DI98G8UIVtEPiDJqQvkL7XZouhsB7clKxk+mkTj+vRq
         X/RA==
X-Gm-Message-State: AFuF++lkmLhvu6SIXxOObc2ACnkW0RxpGBzIxiRn+nZATouZmQQG+mn2
	psTuVBCWW7hv8SZqJJKjOUIi+T5HGKnJx6cklmOXpWDMxftfnqVDHvGr1N1v0A8ys7c=
X-Gm-Gg: AYBFou0J1czqiIqXrXA0dKz4cuAJEV2O0GPHtZ5XfB/Ra1Duw8H7tNFBsEs7ICX3YLO
	0vws/tP1TBJkAUNGs8kI01TA4u0lQnCaJO3JyYb1SkgiW+bDukpEN5IgE3VDtRFqWc2hqxjPQHR
	CbjpIzMv+UaEXY4eMAlS6nzJrMgZHI3odh81lHaWV11dxATetLeGwjtP2pZQ5VGmXvLEYPx/luq
	YTJKVAzGcLn5EK1qmVUdurHCjuyWSRtAgtZoGpXaJHeYt65g4EJDCc18IvVcOJGu9kjQfvz29Jd
	1MQGAn5mQndRtzEHOYayGGkLERi/E81mb6VSx4TOHDNknhXSz8RVdtXU6zF3XUtFQ02pPVOp3I4
	UYGwQcDuExPyFbOcUZ/1TIUG5Iuw0zvvu7tOjamhnt6SJN3vvzNKDIsr92wd3njfHZDUfYNY+g/
	f6k3hsscXtX11ermUbO9xGegM6cu0U9o7RoyvyeiMnagdjclwLLhjT8ycr5NsopEAAxKpcMmBlD
	rI=
X-Received: by 2002:a17:907:6088:b0:c26:19de:9ae8 with SMTP id a640c23a62f3a-c29b8734e64mr227554866b.39.1789401619322;
        Mon, 14 Sep 2026 09:00:19 -0700 (PDT)
Received: from draszik.lan ([109.255.181.4])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2966021d0dsm467443566b.10.2026.09.14.09.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2026 09:00:17 -0700 (PDT)
Message-ID: <6d3fd2d27eb54a926486da34947e843c0f29253c.camel@linaro.org>
Subject: Re: [PATCH] phy: samsung: usbdrd: propagate GS101 PIPE3 lock
 failures
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Pengpeng Hou <pengpeng@iscas.ac.cn>, Vinod Koul <vkoul@kernel.org>, Neil
 Armstrong <neil.armstrong@linaro.org>, Krzysztof Kozlowski
 <krzk@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Pritam Manohar
 Sutar <pritam.sutar@samsung.com>,  Sam Protsenko
 <semen.protsenko@linaro.org>, Johan Hovold <johan@kernel.org>, Peter
 Griffin	 <peter.griffin@linaro.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 14 Sep 2026 17:01:36 +0100
In-Reply-To: <20260623135349.42739-1-pengpeng@iscas.ac.cn>
References: <20260623135349.42739-1-pengpeng@iscas.ac.cn>
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_170021_634000_8EBF0792 
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

T24gVHVlLCAyMDI2LTA2LTIzIGF0IDIxOjUzICswODAwLCBQZW5ncGVuZyBIb3Ugd3JvdGU6Cj4g
VGhlIEdTMTAxIFBJUEUzIGluaXRpYWxpemF0aW9uIGNoZWNrcyB0aGUgUE1BIFBMTCBsb2NrIGFu
ZCB0aGVuIGNoZWNrcwo+IHRoZSBDRFIgbG9jay4gVGhlIFBMTCBoZWxwZXIgcmV0dXJucyBhbiBl
cnJvciwgYnV0IHRoZSBHUzEwMSBQSVBFMyBpbml0Cj4gcGF0aCBkcm9wcGVkIHRoYXQgcmVzdWx0
LiBUaGUgQ0RSIGhlbHBlciBvbmx5IGxvZ2dlZCBhIHRpbWVvdXQuIFBIWQo+IGluaXRpYWxpemF0
aW9uIGNvdWxkIHRoZXJlZm9yZSBzdGlsbCByZXR1cm4gc3VjY2VzcyBhZnRlciBlaXRoZXIgdGhl
IFBMTAo+IG9yIHRoZSBzZWxlY3RlZCByZWNlaXZlIGxhbmUgaGFkIG5vdCBsb2NrZWQuCj4gCj4g
TWFrZSB0aGUgaW4tZmlsZSBTb0Mtc3BlY2lmaWMgcGh5X2luaXQgaG9vayByZXR1cm4gYW4gaW50
IHNvIGhlbHBlcnMKPiB3aXRoIHJlYWwgZmFpbHVyZSByZXN1bHRzIGNhbiBwcm9wYWdhdGUgdGhl
bSB0aHJvdWdoIHRoZSBleGlzdGluZyBQSFkKPiBpbml0IHBhdGhzLiBLZWVwIHRoZSByZWdpc3Rl
ci1vbmx5IGhlbHBlcnMgcmV0dXJuaW5nIHN1Y2Nlc3MgYW5kIHVzZSB0aGUKPiBuZXcgcmV0dXJu
IHBhdGggdG8gcmVwb3J0IHRoZSBHUzEwMSBDRFIgd2FpdCBmYWlsdXJlLiBPdGhlciBTb0MgaGVs
cGVyCj4gcGF0aHMga2VlcCB0aGVpciBwcmV2aW91cyBzdWNjZXNzIGJlaGF2aW9yLgo+IAo+IEZp
eGVzOiAzMjI2N2MyOWJjN2QgKCJwaHk6IGV4eW5vczUtdXNiZHJkOiBzdXBwb3J0IEV4eW5vcyBV
U0JEUkQgMy4xIGNvbWJvIHBoeSAoSFMgJiBTUykiKQo+IFNpZ25lZC1vZmYtYnk6IFBlbmdwZW5n
IEhvdSA8cGVuZ3BlbmdAaXNjYXMuYWMuY24+Cj4gLS0tCj4gwqBkcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1leHlub3M1LXVzYmRyZC5jIHwgNzggKysrKysrKysrKysrKysrKy0tLS0tLS0KPiDCoDEg
ZmlsZSBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlvbnMoLSkKClJldmlld2Vk
LWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
