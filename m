Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8F76C79FB9
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 07:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcnm/Nr7BofTUNnT63FgYGdy6SqMjGvm5Koy9Af3xDs=; b=2KdiTT2znEUTAN
	DwRZ8UGQ1G8MpiAS0T2wJ9XTLAVb4Gkvzbqtxq9ZlhsdUGsI8VdGrFKqB1DDrQMxhBAPTQtdy/YJ/
	f2JPyER/21FcxpSp30LNZRykZoBN0Eqwfi9Iu5SUTS8kOn46AopiOeOdarlCBvkl2YxIQ5h2GcNdA
	6FzgIRzXkNcdd3tLBzNl8uzAVxSqYvHhC54EpqrPE+BCWxdLmMYUbR2eDoXhlLXVYAK1lpyhjhUlb
	hrIWZviKyzZVE9AYuv5A1pMZY/LYTZcP54wCSQSdDm2dIIiLNruBGMNnVchxFnNUlZHc49sm5WLow
	KRqpX3o8SdDfF7Hv5SIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZCb-0000000Dd7b-1T82;
	Thu, 10 Sep 2026 07:28:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZCa-0000000Dd76-1AfD
	for linux-phy@bombadil.infradead.org;
	Thu, 10 Sep 2026 07:28:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6QM06wsJmDFUwDTXBwOD8bKArEY6vK/Tt6RRUM1IU/M=; b=Ms8Xy13oyKOsxHoDMaETC7ghT7
	Pyu+x8SkPGQXhF4SQD+ve4MvChP9DwZG4NhzIQTh8hmSnU4l1G+7/f5GzXwGuAkk2iZ/vbTqW0n1S
	wES4l3GWmB7GpwiOcUkYqyXsNTqWW2FROJl5MM9DIvsaVpHwx2IAzBaf8Pu1tCLZc2G3SeRvAkzng
	Qw19oCVrWZ/03yTSSTjG4h0vBqFGtnZIeGdUjy29/Lx9XK0vf/0VsqE6NyameBWKp6lxN8oKKkUdF
	L2aCaA0+tXs9ed4fR0R2p38nciuF+RaqoovFPFcgVRDr/QF7aw74DcY0/haA/goB4XpvQVPL8DKgt
	sVflWZmw==;
Received: from mail-pj2-x10.google.com ([2607:f8b0:4864:39::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4ZCX-000000028JR-1mOq
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 07:28:07 +0000
Received: by mail-pj2-x10.google.com with SMTP id d9443c01a7336-2d747eefae4so8251975ad.0
        for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 00:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789025283; x=1789630083; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6QM06wsJmDFUwDTXBwOD8bKArEY6vK/Tt6RRUM1IU/M=;
        b=Ly1Bo46fqM7X5v8Ihbr3ooX+Ujue7ZC4D3LSlvJAitVRwqpu6pV0Kd0tyEC+WwlVAR
         pS+TsDXBnYQf/zsT1FWCDGOyDDY65wiTQiIKXWWnAQMohduaiuMYyP0xEyibPCElntop
         NZuZssQ6PRNeTFPvkofQ3u4gUCK4XtmW/GeBtE10BylHNpQIQZ3c0xAhE6OT3PtwUC7e
         hRQYikW/+YdIuIjgtIMqT01o+xjkkZoIl/TLaWl/Jy00/wq0pkGXOjw6e8SPuUhgPsfK
         Pfp5/GrCrvpl2m43YtQPI8BYlhhdQn2YPYS7y/8LQVfr4D6iEEUS361iNqh17c+kIs9i
         ljXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789025283; x=1789630083;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6QM06wsJmDFUwDTXBwOD8bKArEY6vK/Tt6RRUM1IU/M=;
        b=d8WovXzV1WvHmQSRtUqAkCWnkLz0n35Or8IBGVozOo8PAC/3TZ38byPIcsRLPCrCXa
         jAGZ43DqPm4j/a9sdRgx7WsH/7Azo5pPcl2ou83UBt6bkLwemhh+S6nJlWkTZ3LNtrYW
         enTgqL4KLOI36qLd6OM5OxhLzJcHNXnKFLES1pyh2Y6Ow3yplXI3smpS9amSI/gA5b/Y
         kG65en9F8qnxalTVw33qfk/4J4t9I9q6AG8Ez5xNb/H0zaLEx5itZliWB89mZoySTjym
         FP2zyTSypJCNIehH+dF701X5qe1bhTGs/EULrLt37FsedEgpsYV5lUY5vDez4+Hng1r7
         XV+A==
X-Forwarded-Encrypted: i=1; AKwUvBxoPD4ATiuLmvq9jbiaH15UnjYigg9cbQf/+1cR+DJs8+MP+R8CWnr6xXCwCgVz0JUYh8QqPuZTyAE=@lists.infradead.org
X-Gm-Message-State: AFuF++n778U4Sbz1OsOofuZjQj4kDR6xDK8q7DPzpoLl06w0orvAjF0t
	6DyJRXUfF8yeJ/SbPhdFxaepy9EFjwws15bH1fae39jHk0gOmcd5T3PX
X-Gm-Gg: AYBFou1QRpjddDQ+3M4hmbufuwUrNOEBS6TvWbzoEM2Te8lAdKwPc9Ileh7ULi6xUiY
	Q5ikT6ulKLdmOCmMMkEn6fs5X449gxaUpy5m/1KpXVuMCyKH2fh4cYStZLPdLZOcOXdKmvIM9fW
	QUdaIhJ5Pk1P8nTBPcDoqxCwRDh99GLAXhYjIHGT53lfegklw51PSQMhqCgVB6HKwn2rDozyIaV
	RmnURF9PhW3jnWiZvOIzsY04bjfv26eUjmgEkf4YwGcHl7+C1PIKkmriUnHEr4HNdlh60oC+miW
	sK5v3XB8mZM3myQDBS57wKK3UfsCqtXkBPS+OWchoZh53Q0nP2QB/x4t5hIrmD8nETeCLkMSFow
	9b5Bs+Swevta6PecSIE4/KUwROugpfBCIUE5i9cFJ2+8ywKGY7VY3RencHM1M/moJ+f3BxBCFTv
	7xjKloWHnV/NIQ71lvMVcf1edxtTvYqe705ovZtatv+FZCv1ZbCvC6zrV9aWyHJLv0O9mp50aP2
	EkrbyahcFajktFW8OWgJgYvu0psCq93pc8i7W5/DmFbmSxw7NfX5P1s
X-Received: by 2002:a17:90b:3e46:b0:398:9bd3:d6d4 with SMTP id 98e67ed59e1d1-39d77bcba5emr3182903a91.14.1789025282698;
        Thu, 10 Sep 2026 00:28:02 -0700 (PDT)
Received: from [172.19.1.47] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39d770bc9f5sm4178071a91.2.2026.09.10.00.27.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2026 00:28:02 -0700 (PDT)
Message-ID: <7d4b5db1-7b0d-466b-9432-d80882e2720d@gmail.com>
Date: Thu, 10 Sep 2026 15:27:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers
 and dual-port PHY node
To: Joey Lu <a0987203069@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Jacky Huang
 <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>,
 Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260720102222.251179-1-a0987203069@gmail.com>
 <20260720102222.251179-3-a0987203069@gmail.com>
Content-Language: en-US
From: Jacky Huang <ychuang570808@gmail.com>
In-Reply-To: <20260720102222.251179-3-a0987203069@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_082805_677818_7D91D1B5 
X-CRM114-Status: GOOD (  10.21  )
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

IMKgSGkgSm9leSwKClRoYW5rcyBmb3IgdjQuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL251dm90b24vbWEzNWQxLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL251dm90b24v
bWEzNWQxLmR0c2kKPiBpbmRleCA3MjI4YWQ0NzM1YjUuLjVhN2EzOWIxYjUxNCAxMDA2NDQKPiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL251dm90b24vbWEzNWQxLmR0c2kKPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL251dm90b24vbWEzNWQxLmR0c2kKPiBAQCAtODgsNiArODgsMTQgQEAg
c3lzOiBzeXN0ZW0tbWFuYWdlbWVudEA0MDQ2MDAwMCB7Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICNyZXNldC1jZWxscyA9IDwxPjsKPiAgICAgICAgICAgICAgICAgIH07Cj4KPiArICAgICAg
ICAgICAgICAgdXNiX3BoeTogdXNiLXBoeSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29t
cGF0aWJsZSA9ICJudXZvdG9uLG1hMzVkMS11c2IyLXBoeSI7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgY2xvY2tzID0gPCZjbGsgSFVTQkgwX0dBVEU+Owo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIG51dm90b24sc3lzID0gPCZzeXM+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICNwaHkt
Y2VsbHMgPSA8MT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVk
IjsKPiArICAgICAgICAgICAgICAgfTsKPiArCj4KClRoZSB1c2ItcGh5IG5vZGUgaXMgcGxhY2Vk
IGRpcmVjdGx5IHVuZGVyIC9zb2MsIHdoaWNoIGlzIGEgc2ltcGxlLWJ1cywgCmJ1dCBpdCBoYXMg
bm8gPHJlZz4gb3IgPHJhbmdlcz4gcHJvcGVydHkuClRoaXMgdHJpZ2dlcnMgRFQgdmFsaWRhdGlv
biB3YXJuaW5ncy4KClBsZWFzZSBtb3ZlIHRoZSB1c2ItcGh5IG5vZGUgb3V0c2lkZSAvc29jLgoK
ClJlZ2FyZHMgUmVnYXJkcywKSmFja3kgSHVhbmcKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
