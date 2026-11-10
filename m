Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7B1606A320
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 17:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NsR2kcZJ;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=google header.b=BCcyZdCR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IYySu3RNCoaJint3BWMJ3qjZgiDr41zz0s6JgWo65SA=; b=NsR2kcZJ0XLjVcwKSSJv93W97+
	BZ/uKq5UZP3/yugizSks+mp0bPeroB31tPHZ2RCSekDs5dtLm0ADKEtBPWFYXdgh5oO5XXmdUCv50
	uOqG+uV0E5axPcPwRkuacUovo1BwIvXy8ZSxTy015KZHjSHr/j8HZXp9dlvK6u74WrRA5dqynPUso
	iEVH9UOCn5c3Fs8NTPmHRfwC677Sb/SCZX3jjaRk2e2YAdEX+dCKH4ZRWzb8bQaRS2Mq3Z6CLI/aa
	In5uM7LMYHsTJHXOl4oKmmLE694fc3cu8IPttzIvHvAR7vjK83FFDiVwUZhDIln41sBK6UPSIVqlh
	YUn/dqmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQq1S-00000004j1I-36lL;
	Tue, 10 Nov 2026 17:52:42 +0000
Received: from mail-pj1-x1062.google.com ([2607:f8b0:4864:20::1062])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQq1P-00000004j0l-1Qhq
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 17:52:40 +0000
Received: by mail-pj1-x1062.google.com with SMTP id 98e67ed59e1d1-3b179528d56so245888a91.3
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 09:52:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794333158; x=1794937958;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=xCxO6wHN+TRXHIDjOGo8CEF+HLXvHWy33I8APC/0vgs=;
        b=s6P+/4h5ybi6rdtwNuy+eNmiYOb0nsUm0w9L2eAUmvnK4lkU3T7NJUWZipse5PisXf
         vJWz2eqGVsMTghpU9xiFq2Lj79TVUy7cHj4bFqyNl03UjgUNBRvfPJse9wB2tEZQejBo
         ZHLENG8S8T+D7eDiX/u6cHr9XqY2IknajnmBNQUzZhmhrqHjKhZhzTZV1EWVDdSuPALD
         MK0oQzeWNjGTosLAtUmH8uzXXg2ICu2ya/iHsDnO4wWHVMaDAdXC/TNIq5YaMeT3TuX3
         0nTgs1vhaJTMqTzjnEdj8RLUMdtu0lr2MHc0NMFVsKjq/7HOSHK6BpdO2uV12r7PLXQV
         5v8A==
X-Forwarded-Encrypted: i=1; AL+hErGhHQhFWTezQSHAm7mMHlgl6YqHi7fYKAzm9FF9K3t/W0pAWeOrDUW5YqLa6DueCGf06z3fttDaFXs=@lists.infradead.org
X-Gm-Message-State: APuU4Z8TNOJt6LNvw924sCG7+C65HYk/Tb3x75F1qzhrs6O3d48pivzx
	yHO/1cDCWyQJa/VhEQQK+0yTM29s1Wkz5o8WLTr+tbcxu6qHUfU+Du84uXIU6c/pX981uYgHpUm
	P501+ccvp0gN22i3YGT9JWJ4wWQu5U8wQ4961xtqkGFTIM4240W7Cwecm/4h3HF9RzNqnzo3vzk
	9hpIA6gVfO59jIJG7VXwMCtDSA583HdFj4rMSbir+xDqM4mj6gEFBjleCN38dZ3nh/Np1xS+HBr
	4eiyuuDUaS43kpkKCcJQXKnvA==
X-Gm-Gg: AYBFou0kXGjBS3fLxorhQ8Bv3M2ykuK2H7GpYkY0ysWUZ26BADrmr7paWt5OsfATtbD
	4Jr+65cuRkx8sWOjmSqKxbA+1N1I6kPzbzv4RG1QTGSnRgwqaCu01jJpCqHKOwhCo9XicyaDS5K
	100OloVJtPZbW8Ar83qvmwncOyARySdV3/wpnauJde+nSd7aJbQgrjKSIrcHgvr7wHKTgxVaOU/
	ueN7g26dsnD+DLp4G3Iqd4fOIcbj6wGC2uCVnHAMdr/CrAPVu98ajBoVEM4CKTAqZL7T0GkYLG2
	hj02SuM/km8lI1EA7Ufdn0AEt4B55yL7lERodKQRohxA0z6zD4mZG4Azr+Aq+6WXAx8lMACxokA
	+xrms0SP0XJcRjnQp8q7nlQieQlIxjrUPyd/R12DQNi7Q7JrUIZL9Dc3vXYyoEPMzpNyDDM72cl
	0befitpy2XGViD1QGnky1GCA+0hjEpVYWZpNBCTdpk
X-Received: by 2002:a17:90a:d44e:b0:3ab:be66:ddb6 with SMTP id 98e67ed59e1d1-3b166cd48a2mr3024533a91.20.1794333158289;
        Tue, 10 Nov 2026 09:52:38 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-22.dlp.protect.broadcom.com. [144.49.247.22])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-3b17e0dccfesm309263a91.4.2026.11.10.09.52.37
        for <linux-phy@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2026 09:52:38 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93caf6c528aso416639985a.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 09:52:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1794333157; x=1794937957; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xCxO6wHN+TRXHIDjOGo8CEF+HLXvHWy33I8APC/0vgs=;
        b=BCcyZdCR4W47cnW7x4OyepxTVaX77ilkbGnuphM263TEt6+MuN3bd3V2brrd/8qiG8
         Q/c1wwz+xLKV0hZO9otlOdTlerd6NWb0LCAy4Ib0DdzNr7l5y1gjpWECQ6ClsUNcXRXE
         nw8uAq9hTWPYsY5Mztx2gbZwNpy63ZpCZXVv4=
X-Forwarded-Encrypted: i=1; AL+hErEeCGK9GdZubYg/1/nzUmkmvEhJ453/mPB+kb/9PuC6xFVOMbzwnTzCnL5WKfy7n/qskMu+WVV2S9E=@lists.infradead.org
X-Received: by 2002:a05:620a:371f:b0:93e:56c0:bea9 with SMTP id af79cd13be357-9479f311f79mr562160385a.21.1794333156968;
        Tue, 10 Nov 2026 09:52:36 -0800 (PST)
X-Received: by 2002:a05:620a:371f:b0:93e:56c0:bea9 with SMTP id af79cd13be357-9479f311f79mr562155985a.21.1794333156491;
        Tue, 10 Nov 2026 09:52:36 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f02efa477sm1774066d6.16.2026.11.10.09.52.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 09:52:35 -0800 (PST)
Message-ID: <b48af994-293d-4a19-ae06-cc0fd586bb8c@broadcom.com>
Date: Tue, 10 Nov 2026 09:52:33 -0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: phy-bcm-ns2-usbdrd: cancel extcon work on unbind
 to avoid use-after-free
To: hyunjungg <hj351016@gmail.com>, Vinod Koul <vkoul@kernel.org>
Cc: Ray Jui <ray.jui@broadcom.com>,
 Raviteja Garimella <raviteja.garimella@broadcom.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20261109170223.1829473-1-hj351016@gmail.com>
Content-Language: en-US, fr-FR
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <20261109170223.1829473-1-hj351016@gmail.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_095239_394595_8C2632EC 
X-CRM114-Status: GOOD (  15.35  )
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/9/26 09:02, hyunjungg wrote:
> From: Hyunjung Ko <hj351016@gmail.com>
> 
> ns2_drd_phy_probe() schedules driver->wq_extcon (extcon_work), which is
> also queued from the ID/VBUS GPIO interrupt handler gpio_irq_handler().
> The work handler dereferences the driver data via container_of().
> 
> struct ns2_phy_driver is allocated with devm_kzalloc() and the driver has
> no remove callback, so on unbind devres frees it after probe's resources
> are released. The GPIO interrupts are requested with devm_request_irq(),
> and so released by devres; free_irq() only stops further interrupts, it
> does not cancel a delayed work that is already queued. probe() queues
> wq_extcon with a debounce delay before returning, and the GPIO interrupt
> can queue it too, so on unbind the pending work can run after
> ns2_phy_driver has been freed, dereferencing freed memory (use-after-free).
> 
> Register the work with devm_delayed_work_autocancel() instead of
> INIT_DELAYED_WORK(). It is set up before the GPIO interrupts are
> requested, so on unwind devres frees the interrupts first - after which
> the work can no longer be queued - and then cancels the work while the
> driver data is still valid. extcon_work() does not re-queue itself, so a
> single cancel drains it.
> 
> Found by static analysis and code review; not runtime-reproduced (needs
> Broadcom Northstar2 USB DRD PHY hardware).
> 
> Fixes: 787f24543c4a ("phy: phy-bcm-ns2-usbdrd: Broadcom USB DRD PHY driver for Northstar2")
> Cc: stable@vger.kernel.org
> Signed-off-by: Hyunjung Ko <hj351016@gmail.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
