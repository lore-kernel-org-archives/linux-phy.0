Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4653AC55ABA
	for <linux-phy@archiver.kernel.org>; Wed,  5 Aug 2026 08:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDqo0YT2ZS35WnIFqUuCgam4mve6guTWBjPdZEntdic=; b=gAlVS/6Wtid5as
	lCgd8Yyw2/c24rj/k55GrlSsRIuZvLjvvy+BUez2+gaw4suD4n4BHVAK+tGnQ4rOMC8jZjIkUbfO2
	T/TAGAmVpPOheOZcn3wNnBEUI7TVJ47BFvtu9RMNw8jWEBKQ8kAG8OYCYOQpXLghZv+NSJOMmZMzR
	WAU6neEUvwS7G7HxrSQ8bUkOLMLXKhR7ADsnIO4icC7tc5AfcbHAqs2ERbWgR1WWdkpuMV5j6kYsI
	cyAIs5pxmu/NwLbQ/r5afGlC+V1UdVfdNpfqIMk6sgTvPwSXfZwjM8lBfWrWABHjGVQAfkQFdmEbF
	jJuE+323LjzaP2ZLG9Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrXD7-00000003Xxx-0yyE;
	Wed, 05 Aug 2026 08:42:49 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrXD3-00000003XxN-32Ma
	for linux-phy@lists.infradead.org;
	Wed, 05 Aug 2026 08:42:47 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-49556f97a9dso4446525e9.1
        for <linux-phy@lists.infradead.org>; Wed, 05 Aug 2026 01:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1785919364; x=1786524164; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EQIOeZPTsJ+5KJmdvOKBti/mfnMsa2qcUPhVItieKt0=;
        b=RQySPudBWxr5Vbbd6YHuOVNx1AnrBq8BE+rA3LB8/dEdQ0gyiPrqThfptP9LpWNhzN
         qtf4atXOgYzVkx+2JOOBAQgbvLu8+CfEVsM6eAeMC0k6VMLHCNmuiufvZwHG9ox/3l50
         viBfa93Hidvq9gJ1/Cs4J9U8Ced754FznJCU8Kzw3nWXC3bfdtRKdepAe68JVOI5xqxc
         Nl+ZtG3jlTc+y/MqKbZhJzS0a53mdb3G2SHSSS5rBOi1b8m/0/d6//6/op8dLljvB5Fj
         9PscDiIQVgZ1ec51gOl3vGiGoA3KgkzQlQ0rivV3KuIrxTTVvyLScM4PJB/4F74FtjQx
         GUfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785919364; x=1786524164;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EQIOeZPTsJ+5KJmdvOKBti/mfnMsa2qcUPhVItieKt0=;
        b=JNknVFJ2vb2iRId67aP2bY8RtGzW37ASTgFitYjkeIJYCdY3DQMvcu0+8omgHy/MPQ
         wb9OT54zx76qE12VOLk5yFxyxWMm7FNgCwTPdU2ZDZ9Sz831jBnIA8rIHALGh71BGTR3
         zVSz3zDVUQPVtSVzI0PdVzj9ZWAPUJeuu94GTY4UTYWi5XbGGU7iOw125D1fYPU0pd/Z
         MonGPYC8iGQaFb9lTV5TjoE/2KGddIgz+0gmJ+ek82hxZQHAjl+a0ArSSj6+1NaYS+4r
         SVsJKaym4joh5jER3ynM2T7298kONM9IaJUxJ0bv+wnSJYrrVtSD17qHqbVhpEfogmRD
         pb8Q==
X-Gm-Message-State: AOJu0YxDx3vhZui1ZJZlT3QQv4bu9d5ThJHJVcWR8/klRVB9/f4TMDBn
	xK42MdQjGMLTL8z49wdfLnBV8oyulTW+e7vWTUMahA6xtnYHbQ9by96Tg0zTPmQijPI=
X-Gm-Gg: AR+sD11uK0rN6fprQKy9X+/SCKsLPu4SpLEloK6TbUoeSMljYeYtmsVLewgDG5qlP8H
	T6XYA88FFKtXfAFRjlOWOUHqt8BLQToURgpzVwCXOBV3rw9fb6ufJ4M+U9oEKR+T8N+530Rw3Cu
	zuDLfYhyY4CufIxqmtL/IqFU5+2UDbmPPVpodSgqNjILG+TmZYtmxTRIkKf8iEuwo7B1necdWOr
	klA8YyUJPfPdiU02K671VU4zKrlIcEehdZdG7Zm1lKMIAXHdCxrcKZgFYj7xSItUiJKuxxQ6c0U
	NJb0WVJWe5MLIPYDEvmKywH9l7xzVkU6T1lzRdoecg43RiP/gz9pXtsYgfensisPNNmPSrXhEh6
	z8DMGnBc/yxqOYnC4gQj/KyJ1+Np6VDx+lOwZs/AicAGl+CrE+X27vlFPMJcpCqRcNt8dgZLhNE
	l3qQC4TjfNAMRICkIkcNvfUwQdrUz58IMzyW5JcDET9fC61i0UVLy/JdEz2viyfm4BrEFUyGknF
	4yAjUaOMug=
X-Received: by 2002:a05:600c:4454:b0:497:fecd:5b00 with SMTP id 5b1f17b1804b1-4994e7c0377mr56478105e9.9.1785919363850;
        Wed, 05 Aug 2026 01:42:43 -0700 (PDT)
Received: from [10.115.255.165] ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4994dfe64e0sm70877995e9.6.2026.08.05.01.42.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2026 01:42:43 -0700 (PDT)
Message-ID: <5f10e213-2ab3-4309-a01e-5d0f098a5b35@sigma-star.at>
Date: Wed, 5 Aug 2026 10:42:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: phy: ti,phy-usb3: document aspcie
 reference clock setting
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, johan@kernel.org,
 rogerq@ti.com, Julian.FRIEDRICH@frequentis.com, upstream+omap@sigma-star.at
References: <20260804111849.92046-1-david.oberhollenzer@sigma-star.at>
 <20260804111849.92046-3-david.oberhollenzer@sigma-star.at>
 <20260805-uptight-onyx-unicorn-cfd0ce@quoll>
Content-Language: en-US
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
In-Reply-To: <20260805-uptight-onyx-unicorn-cfd0ce@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_014246_102572_F669F8A3 
X-CRM114-Status: GOOD (  11.31  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 8/5/26 9:39 AM, Krzysztof Kozlowski wrote:
> 
> Not a valid naming, missing vendor prefix and syscon looks like
> Linuxism, since you called it "system control module".
> 

I agree that this is a very vendor specific kluge and I suspected
it might need a vendor prefix. However, I ultimately tried to stick
to existing conventions.

There are 3 more syscon properties defined for this device:
  - syscon-phy-power
  - syscon-pllreset
  - syscon-pcs

None of them have a vendor prefix, all of them use the
description "system control module".

I take it, the existing properties already break best practices
that were established later? Or is there another reason they
lack a vendor prefix?

>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    maxItems: 1
>> +    items:
>> +      items:
> 
> Missing -
> 
Likewise, I simply copied from the syscon blocks and made some
minor changes. Hence also the identical description. So this is
broken for the existing properties as well?

Thanks,

David


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
