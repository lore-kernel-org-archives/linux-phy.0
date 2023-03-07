Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7683AC6FD1A
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWF3u2drba7coG7hlKPXRLmHab76bKnP4F6G5TakkQA=; b=W7pi+A0rFN7nki
	R2wdfy1cMuY+C6ySLvxsciXUsdtt+JdcUcYlghTFhq4pVbUo4TENotJGONlGq1yZr1ZXIzoJ8Sngy
	HPyq06WaNN4Q4jE6pPyjOCgZ24k9v07Cw/c2tTANuVdtUJAsHh1QzBvASUd4Oyoouv8pqLgyWGIrr
	Iz2izJWpkZCyQr38jLiiUvwIiEqDBdpwb3VmGxre1IHhOqSxB/HuK3QGPlI1SmwHpP92D8OvI6nX1
	i4T05SoQAV2vj8zeRbKTwtwh2KGTExgpELjiy97EQAz+vlodKM1MiQPEM8M7ZJuJhuQH3J+MBWDkh
	7AzSTNT7rE8QoHy2WAkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZac4-001hGD-TK; Tue, 07 Mar 2023 16:56:32 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZac1-001hF8-Tn
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 16:56:31 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id ks17so9323395qvb.6
        for <linux-phy@lists.infradead.org>; Tue, 07 Mar 2023 08:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678208188;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bsP4zyRXiQHfNFLxwLszu+taV/HI1kEDUOViJXYzvIY=;
        b=S9wER2n213K5L29BbEeyEaIXNYxexUgi2FfRYqc1biH5fOATlBGANkILdM4ZiBO958
         Kl0qPJgOH8TwNEhSqCWTv6zOFcVRqFVzKGKVo9urTW17n7VhIJOVw6Y5meaa1Bbm/vtR
         adv1Shi3auqPb84NtQSroJLCR5WufbNGn7ObrootP/UbaNxna0KPE4wDYJvaNYhESyq+
         n/fvm06C3RRjcrkRiiSsTTLfgD70w4K20d3FcR4NNlndL6GQov5gxvDVPLsM8qBGlIrx
         OGsaNr0aQSvvHAUASWIFZPEukqTBSyVOCX5nV3Y6Cpk9QiOHZFDG1txPr6JerUMm/T06
         jbqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678208188;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bsP4zyRXiQHfNFLxwLszu+taV/HI1kEDUOViJXYzvIY=;
        b=twvL5JXiEkUIfCiiE5c8MIElLRq0nJ8H/NAusQseOHeHbEOxcZutUygutcgtDvWvNU
         u2+i/lQWhv/QXqHqv2fKZko67nO92SRfcRE1ndU/3JYaoKE8PWNGj9L/yPZDLk0ldV1Z
         e+Vq8aAI2IOa6eqQE9aI5eYaP6JORvq4BbMcqgNdU29+Oy+peiKtz7uCI3YfU/mRiRWU
         hP50pulSMQaxXEINwlk88Ou97ymGfZLB6YY+jskGz62HngTNzG0bfBqVBeCvu0MY50FM
         /qF9EhuqOjPVNXszUORhG6XfqNLI/eTsDIcp+kuBqEx1sj2YOdaSTDCzJtrFQANG7R/u
         /dDQ==
X-Gm-Message-State: AO0yUKWQZhGeUmkSUuCYOPgsbzz0+RboHXeZbsl7Au6yvLRNuQS7Kct/
	w1ljQt+zCef7cKYUkyhBt4E=
X-Google-Smtp-Source: AK7set+oZv5t2hC+nDWt0ZtlUOex2mMmTnd0JgKLP1BqGS299TpFeG/DQZL8uSFyHNJIoaY13mL7qA==
X-Received: by 2002:a05:6214:ca4:b0:56b:fe6a:df87 with SMTP id s4-20020a0562140ca400b0056bfe6adf87mr26694549qvs.52.1678208187801;
        Tue, 07 Mar 2023 08:56:27 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id r8-20020ae9d608000000b006f9f3c0c63csm9796308qkk.32.2023.03.07.08.56.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 08:56:27 -0800 (PST)
Message-ID: <fa6128da-268e-48fa-7912-74425aafaca5@gmail.com>
Date: Tue, 7 Mar 2023 08:56:24 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 02/31] phy: broadcom: phy-brcm-usb: Convert to platform
 remove callback returning void
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Justin Chen <justinpopo6@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, kernel@pengutronix.de,
 linux-phy@lists.infradead.org
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
 <20230307115900.2293120-3-u.kleine-koenig@pengutronix.de>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20230307115900.2293120-3-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_085629_998994_1C344F79 
X-CRM114-Status: GOOD (  12.04  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMy83LzIzIDAzOjU4LCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiBUaGUgLnJlbW92ZSgp
IGNhbGxiYWNrIGZvciBhIHBsYXRmb3JtIGRyaXZlciByZXR1cm5zIGFuIGludCB3aGljaCBtYWtl
cwo+IG1hbnkgZHJpdmVyIGF1dGhvcnMgd3JvbmdseSBhc3N1bWUgaXQncyBwb3NzaWJsZSB0byBk
byBlcnJvciBoYW5kbGluZyBieQo+IHJldHVybmluZyBhbiBlcnJvciBjb2RlLiBIb3dldmVyIHRo
ZSB2YWx1ZSByZXR1cm5lZCBpcyAobW9zdGx5KSBpZ25vcmVkCj4gYW5kIHRoaXMgdHlwaWNhbGx5
IHJlc3VsdHMgaW4gcmVzb3VyY2UgbGVha3MuIFRvIGltcHJvdmUgaGVyZSB0aGVyZSBpcyBhCj4g
cXVlc3QgdG8gbWFrZSB0aGUgcmVtb3ZlIGNhbGxiYWNrIHJldHVybiB2b2lkLiBJbiB0aGUgZmly
c3Qgc3RlcCBvZiB0aGlzCj4gcXVlc3QgYWxsIGRyaXZlcnMgYXJlIGNvbnZlcnRlZCB0byAucmVt
b3ZlX25ldygpIHdoaWNoIGFscmVhZHkgcmV0dXJucwo+IHZvaWQuCj4gCj4gVHJpdmlhbGx5IGNv
bnZlcnQgdGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92
ZQo+IGNhbGxiYWNrIHRvIHRoZSB2b2lkIHJldHVybmluZyB2YXJpYW50Lgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+
CgpSZXZpZXdlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0t
IApGbG9yaWFuCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
