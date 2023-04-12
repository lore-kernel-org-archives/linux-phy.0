Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF69DC77B75
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 08:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8yQFEY9k75lvNsAt5mGk44JjAlX3gpD1g0CaCse9Vw=; b=XrKhnCpuVQnWca
	q3oFD5rJbs6l0iKcgsEI3qr2lmB8wThcHiZHASTPTvYTTHIeN04149nDK/WwbygLvuaxgG1A7NmhH
	Zvfk0m1l03e92aSRRTOBdKdhXZn7b1TF/zKXBpBZ0n+FGo7s8Xiq068GqvtVjGA+cNgnt+Y7fQT/h
	/EO7jXVS2lbfA9Xob6rghxZtdQeAkdTIi8xho95ChScw6KSbX/IQf6XNAQMU8EwklCd0u65cYBaqd
	QjDZmVJ1VVCMIRD+X/oBqjagmYSEWlHkPelkGxbYoYWQ2mRIK0BC1NOiEY76ozIVHWK8n0yYO7D0e
	JoMyaG9iKDaxhfd+YeJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmVSe-002BfB-1q;
	Wed, 12 Apr 2023 08:04:12 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmVSZ-002Bdn-2Z
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 08:04:10 +0000
Received: by mail-ej1-x635.google.com with SMTP id gb34so26822630ejc.12
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 01:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681286643;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7sCYQWmrIHjLodZCUEstj/wAUl8903bf+mCezIM9gIs=;
        b=TG3HVhuvb+yHg3+UCrQWVrPaZhnVggB+RTvB0Pk09hNmrC2AYQz++koo4E4+CDrAOU
         pPLu4b9mtg8xMwyxSv0ujdYIw/HzwYiN/TJeZLZD/8GKuGrL5i1+x166V2W1H0TqBPde
         Z+LyeS8tth4XhHd7jdXS2Gsu3+qgmtwuSo9ncvGkxin3QOIkBuAE1R6L9ANkI4lf8ZFU
         +3s4PCb0Xmk9+YoCb42tdD83/YeUZhzsDPybPBh13YPKEF7mXd08dRL9zdCh0ZDJNdV3
         tGQbkY93qCRDW3kpUUKV+OXW297TqIFpSKHBYQ4qxCnzZz1oS1tw0BQgVmev7RsazY7s
         VCIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681286643;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7sCYQWmrIHjLodZCUEstj/wAUl8903bf+mCezIM9gIs=;
        b=hXUeXjS4pXlRopqdceVxaSqLRnFjQeJtj5fk8pMvDH+LSj5tq7QTJ6132vCa6cZ2Zx
         OAJf5jbodl/4X3rR7Z70ihZuIWPF0AZReU6+NnWxNcU4c/nr/aMWRiVG2LBlSmgnklR5
         qxi9paoKrnI1mmllstOSLAcdNCNvUt9kDnV5IUWJpPB+R0KjYyVljAmoBHjCKvbb9g8M
         3abNm1iAVDhS+ae+C0qjAUyzM+ax9j20tOY2wyrXJK5AjVxUjOOzHo6HB5Jra45wyx5M
         YpZSECqTJ1ZD57Ej6LUxgidwIwkyecIF+kmLE2838XyS46TE61sWePg5ZOoKXsMWvklQ
         a6VA==
X-Gm-Message-State: AAQBX9dIi/GKAQ0/2nILlRZLn4MkTrYFeCxDlvVFfIDjznymFToKLEiw
	zKTxGWk32sexIgoBZjpZz5cJDQ==
X-Google-Smtp-Source: AKy350bqsn9FugkvkWfL/MPu3dTIMA0gp1RVfg+cMrbd9FUEsvEngyqRYlsTCIugeFcFo52sPdNCog==
X-Received: by 2002:a17:906:8601:b0:948:6e3d:a030 with SMTP id o1-20020a170906860100b009486e3da030mr14441369ejx.42.1681286643266;
        Wed, 12 Apr 2023 01:04:03 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8fa0:9989:3f72:b14f? ([2a02:810d:15c0:828:8fa0:9989:3f72:b14f])
        by smtp.gmail.com with ESMTPSA id sc40-20020a1709078a2800b0094a84462e5fsm2998603ejc.37.2023.04.12.01.04.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 01:04:02 -0700 (PDT)
Message-ID: <848f5e3e-44ca-3648-2d6b-7e06ce7b5cda@linaro.org>
Date: Wed, 12 Apr 2023 10:04:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v13 03/15] dt-bindings: Convert gpio-mmio to yaml
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org
Cc: Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Madalin Bucur <madalin.bucur@nxp.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linuxppc-dev@lists.ozlabs.org, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, =?UTF-8?Q?Fern=c3=a1ndez_Rojas?=
 <noltari@gmail.com>, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-gpio@vger.kernel.org
References: <20230411184313.3679145-1-sean.anderson@seco.com>
 <20230411184313.3679145-4-sean.anderson@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230411184313.3679145-4-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_010407_877458_8B46CD62 
X-CRM114-Status: GOOD (  15.46  )
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

T24gMTEvMDQvMjAyMyAyMDo0MywgU2VhbiBBbmRlcnNvbiB3cm90ZToKPiBUaGlzIGlzIGEgZ2Vu
ZXJpYyBiaW5kaW5nIGZvciBzaW1wbGUgTU1JTyBHUElPIGNvbnRyb2xsZXJzLiBBbHRob3VnaCB3
ZQo+IGhhdmUgYSBzaW5nbGUgZHJpdmVyIGZvciB0aGVzZSBjb250cm9sbGVycywgdGhleSB3ZXJl
IHByZXZpb3VzbHkgc3ByZWFkCj4gb3ZlciBzZXZlcmFsIGZpbGVzLiBDb25zb2xpZGF0ZSB0aGVt
LiBUaGUgcmVnaXN0ZXIgZGVzY3JpcHRpb25zIGFyZQo+IGFkYXB0ZWQgZnJvbSB0aGUgY29tbWVu
dHMgaW4gdGhlIHNvdXJjZS4gVGhlcmUgaXMgbm8gc2V0IG9yZGVyIGZvciB0aGUKPiByZWdpc3Rl
cnMsIGFuZCBzb21lIHJlZ2lzdGVycyBtYXkgYmUgb21pdHRlZC4gQmVjYXVzZSBvZiB0aGlzLCBy
ZWctbmFtZXMKPiBpcyBtYW5kYXRvcnksIGFuZCBubyBvcmRlciBpcyBzcGVjaWZpZWQuCj4gCj4g
UmVuYW1lIGJyY20sYmNtNjM0NS1ncGlvIHRvIGJyY20sYmNtNjN4eC1ncGlvIHRvIHJlZmxlY3Qg
dGhhdCBiY202MzQ1Cj4gaGFzIG1vdmVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNlYW4gQW5kZXJz
b24gPHNlYW4uYW5kZXJzb25Ac2Vjby5jb20+Cj4gUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWog
PGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KPiAtLS0KPiBMaW51cyBvciBCYXJ0b3N6LCBmZWVs
IGZyZWUgdG8gcGljayB0aGlzIHVwIGFzIHRoZSByZXN0IG9mIHRoaXMgc2VyaWVzCj4gbWF5IG5v
dCBiZSBtZXJnZWQgYW55IHRpbWUgc29vbi4KPiAKPiBDaGFuZ2VzIGluIHYxMzoKPiAtIEZpeCBy
ZWZlcmVuY2VzIHRvIGJyY20sYmNtNjN4eC1ncGlvLnlhbWwgKG5lZcyBIGJyY20sYmNtNjM0NS1n
cGlvKQoKWW91IGdvdCBzb21lIG9mIHRoZSBzYW1lIGVycm9ycyBhcyBsYXN0IHRpbWUuCgpUZXN0
IHlvdXIgcGF0Y2hlcyBiZWZvcmUgc2VuZGluZy4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
