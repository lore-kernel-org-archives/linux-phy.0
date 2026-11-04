Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB81606EE8B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 16:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QLmiwORw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=s1U+tv7W
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nzOzkd9aWDfbJb4FVy9Wviir+/w9OjyAr7IlhVvk6fk=; b=QLmiwORwWZTfrr4+MpipElaol4
	Ef9jJgMudZq5/GQLRBYGjTTNVtgHi8t/eQplCDqcTn2HuzwI6JdWWYfqyAd68GFlXBtlJ7z3yIsyT
	6nwtls8bj6yaeq53uYeJNxX0R63lA1sHFNIE1jM4C5d1p7XWc1mqf4GvrIO4tKQUVIb/TNbu7oXA8
	5KRyDH2tYlQcbno59Bt2Snl/lcgMsood5p5cr9+lwxNOFW9fGLooA/QghppON61znfrCCujtXIyno
	Q0ZKFOjiw51UE7Tkk9/iF+7vW6/8MtSOKLzJJ38EeEcwlCjMhnw6epGU5iU4dLgPdAYJKV7pmu1zm
	ZW8qhE7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOdfv-00000005vbg-0j30;
	Wed, 04 Nov 2026 16:17:23 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOdfq-00000005vYn-1gpg
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 16:17:22 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4a214c5c4c0so8189275e9.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 08:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793809036; x=1794413836; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=WGjQzXDbihJeW6cw6LNSbBuxJDvDK/XLahSbUoADWnY=;
        b=s1U+tv7WO440xWUrPKIwEVjSKIOqm2tl9sLScpfyho3ZGA3jENd4nQo9dbDZTl7dkI
         KnuF5iiMB3neRR6Yf1rR/3kV34BGcVDAXOLH6voN6LUtthKaXqTxil1VwPO+KYn6Dxzy
         NKCHKFb/8a7IauTXx71CzuYXIpmt7DJgzICm/EvwyyUTrGVhErrUBun3dcAPqlEoTUGV
         Yo8feXra9nUzasf+8/rUnRYipE9aNPlkIGSF4LhSEhzENAsCOOzroejYXqSVFfQdk9VY
         6ehVShvFmNYqFZagfNLkOY0/oa2134mp13TBSa+mii1N6KyTCpxDgcQoRH9GL4SIO+IW
         8flA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793809036; x=1794413836;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WGjQzXDbihJeW6cw6LNSbBuxJDvDK/XLahSbUoADWnY=;
        b=NTLvGdvghVP1CJiSjlI0co87XIchcD/GuYMazBIoQLynhEO+JAJM5yTnrpvleCr33J
         W+lB0Bt9wWoddRFd2v+VthZou5TWoyRuMjKbj/I09b3kugLH+jY/NgfGI0unluvhLlfe
         r9Cx4aTJGgJ+gDVcWJC6cepfclkdZPV1+JVhP5Yuh1TLbxthC6MG0VWC7NYugWWYMFl0
         UcW252c9R8CVrHxFWY6KnwJ1ujfTCtZQMPdpqSPnpOmTr/DHUI/a+A3cIqjfIslNABTB
         wHMaXi/jaBYRMNbjhIfhQKM6InG++qdPxWycr92ZfGvznALmWOoU3cyEq8qBKeY7XBAc
         H5gg==
X-Forwarded-Encrypted: i=1; AKwUvByat9BwZTmWX7my1PX6jgv8ljjSPm22c7fIGwndVuWMcWJBnMf/VUc2ajzZw83HPMEnqEstupKa3gg=@lists.infradead.org
X-Gm-Message-State: APuU4Z85vCUXuCQO+tgwIjhR1e3XdLDrmyZNrQGsJguE6gp2uXnaWiUw
	qLWzv/uagTG7LURLDzsLQNwFsUG7LItYMzPXpFRW73OZZ9P58DI9L7HHSzmqfZlHgm8=
X-Gm-Gg: AYBFou0nVgYoDjlnZnlezotszamHqMN8nAKiij0fBqXAPeunWOjm9sY8mjxJUVpEHcG
	pf8KqE/bPa1LSkvj1+wgBta5u6eNZ1KXwwcjXaEhm/Rso6Dwirw//6KYQCdJTyh/i9Y7VVmLwOs
	NbzJu1mp1hjwmD7yPRvRSgrsaIXccUMW4VmHJArXKFX/d2u4u3O0pkNCrTtBUS7MPoOVXwRVvXS
	s6c84X9hl90Hb9ockGx/JKN04pZUA6Olnjkyd2N/Bw4J2iZ2F6z3RuO273C3Lymx5t3I1/Bp8EF
	Gusa3tHM9JEkbsVt1Uj9XN6LydVD/kZxpE9mVLPQXNbrJer/qpYqdcWtiWUwN6qWc/TPy5N8yVA
	cHKQ/HR3iKGeS4sQokOvjhac+NjI2OVq5qdrP1TRF2TY5t3rfdz+IKHVXfbd74+c4MPdtHxsO+I
	aNO+giOwfyt35BR9HUuu+XULG6uP0k0UMLAs2BQT1OTBfxwmUNi1kng4X7s0YfvSc0kERm6ymjX
	3j6NgjVraIhrAVehtqIxOTwA+JgzAn8zEkzwue9bdI7iHEXT649nwSlj5IiSIn/NIaPdASdAwTp
	yDGPYYi6rgNkXKQZNYg9LGcYoh3RUdt1FOjwKFTE6V4=
X-Received: by 2002:a05:600c:5295:b0:4a1:e92b:ae4a with SMTP id 5b1f17b1804b1-4b3c3545146mr75677375e9.21.1793809035955;
        Wed, 04 Nov 2026 08:17:15 -0800 (PST)
Received: from [192.168.0.167] ([109.76.163.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a9faff90sm169274795e9.5.2026.11.04.08.17.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2026 08:17:15 -0800 (PST)
Message-ID: <7acf1f64-a2ac-411d-a235-69ea52231623@linaro.org>
Date: Wed, 4 Nov 2026 16:17:13 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] media: qcom: camss: Add support for Hawi
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Suresh Vankadara <svankada@qti.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org
References: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
 <fFfGGWaoXA-LdO6s8Xh_kQWQfncXe9YNdpcj2yNkphWHAR_V69LdLOcuhXPsbg8dEUSN4j4yygq4wPre5cz79w==@protonmail.internalid>
 <20261030-hawi-maili-camss-v3-5-9742bca8cef2@oss.qualcomm.com>
 <5817be6b-7180-407b-acb5-8c5fdef4edfb@kernel.org>
 <73b1f591-69cf-471b-9763-a0b719c74501@oss.qualcomm.com>
 <fac8cd6d-c3f7-4ed3-b0d4-7cb8a7a6f451@linaro.org>
 <d92a8aaa-5cef-4416-b1c9-46ecfc6b2745@oss.qualcomm.com>
 <CAFEp6-3ka3ZKzCoLQ5BNv0YR+yhYXVRwV6G6rM8Lx_9hZ0RqVw@mail.gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <CAFEp6-3ka3ZKzCoLQ5BNv0YR+yhYXVRwV6G6rM8Lx_9hZ0RqVw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_081718_469312_B51E0E6D 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 04/11/2026 16:11, Loic Poulain wrote:
>>> We have a series from Antans to address this though.
>>>
>>> We should list the clocks the SoC supports not constrain that list for
>>> one specific sensor on a test-case.
>>>
>>> ---
>>> bod
>> Good to know that Antans has a series addressing this. I agree that we
>> should list all the clock rates supported by the SoC rather than
>> constraining them for a specific sensor.
>>
>> One additional concern: if the clock selection logic still always picks
>> freq[0], listing a lower rate first could leave CAMSS unable to work
>> properly with sensors that need higher bandwidth.
>>
>> Could you please share the link to the series? I'll rebase the next
>> revision on top of it.
> I don't think Atanas' series targets the CSID clocks, only the VFE
> clocks. Ideally, we should make similar changes for the CSID clocks as
> well, but for now they are not being considered here.
> 
> Perhaps add a few comments documenting the supported rates and use a
> single rate for the time being. Once the CSID clock changes land, we
> should be able to revisit and adapt this accordingly?

Its the same principle though.

I don't think there's a valid case to exclude clock-rates purely because 
one sensor requires the higher rate and we aren't willing to do the work 
to make the clocks smarter.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
