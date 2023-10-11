Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 696E2CD6E5F
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 11:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9cjY0vUsIobUHvfIiTA6D3+YG/lpaSPALWYNCE2iVU=; b=JzeEyWKQYC5I69
	HvMLOLPnA+gwGuH+RhZULY66VzsA1h949bIAhdxnjDpk3uVxoFqIHYndZPfsAjHhuowG1j/HcBMvB
	ToRv9llmjkPKtyFGBsATW/aqSU5AsFchMHBaIFBT57WW7u0kh66If8C3f1SkGLOpYTUykpmIvsKr4
	uD259OT5jHpaBlUEmza80Qpa4V2NaATE8jupMJBGFaU0GPIORlgrV/r/HId3D2D3S29krUhSnGXr0
	0sAi201qhSmYYir9OUGRk+o5Vrm89Vb/iUmSQOzoRTA515u14PWeNYhfgJfLKdf8zd3KHITns/mNd
	bflJcjxD5MMLFzpu//jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXUe-00FlNT-0S;
	Wed, 11 Oct 2023 11:35:12 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXUc-00FlMe-0A
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 11:35:11 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b9338e4695so86836891fa.2
        for <linux-phy@lists.infradead.org>; Wed, 11 Oct 2023 04:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697024106; x=1697628906; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Qapw6Vwkgw3j/x2kavvMeUiB4u4WXfkqK2WO2XBHoI=;
        b=gNYmsOniBORoMqwYitTPWykMjawg+gh/Af38PgMxUqj5TuYEKXASNqbKkGb6yRYCVq
         LXv9SFfWJFZBnW6BI85AXVdGCAC7CV3xl0CyDZEpkpHHO1s89eSZqu81pnflLFqFPON6
         wsBr3MqZzSsN3HUvrlqw5xLiS8zvP7Fjvw7dH1L6X3lzN6zmdCTiHcdBN8Z68/7q1FAd
         5+gdhvfUP6R3VgNDzEw/JxRvhJLx3LgemzEMQvrm6t05X64O87ci70qTR8vBgAPv8Hpo
         unwsSC7nITIW1ilquLVsokGK3icVpxUvjy8BdoLLyX4Um9l426HV0XNc1PVVDJg7r8vb
         blZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697024106; x=1697628906;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Qapw6Vwkgw3j/x2kavvMeUiB4u4WXfkqK2WO2XBHoI=;
        b=qC4Ie3+4qeYWhONa8gzzIdOodar3e0HMRtHGFXFKi/Vi01RTalQlM7yT8Ir7bu0gEy
         bOEidYRisnY5k6ihjOXw6R784J47+YhWp6+c2pRCeJ/b+i4W6+aEycGsdfDIgjsqPWkv
         DgjwAzvHZrRNjN7NoAQtsC0dliau/upS7JNMtG8DygSPjKLj1v28J1tMQublDiYMWapf
         q3jT1wcOh18b5ueh/aWK5mDzhW6BSdXVkfBd6j35HLxNRcKM+HnrQje74OmmYw0mG0Px
         Bx0o8bX17pPx5uosOXSv+O1r9B5V5mrAsgSG24iQHADZ20oHUW4S84/0SM2NXgFRpd/w
         6CVg==
X-Gm-Message-State: AOJu0YzbAj6QpEbNqoOxYK+A5u7oC/amG7R4C9PuyEgTuD+Q/w4YANmY
	qe15ZmhF+b60Hw3aBIkk7gPtqQ==
X-Google-Smtp-Source: AGHT+IF5GLRI9qQunLWRzrMod3FWnDE+uoxeFzNq35YPTOaf98ygydLZmEYH1BWul8Cf/WIu46bWag==
X-Received: by 2002:a2e:9e53:0:b0:2bf:fa62:5d0e with SMTP id g19-20020a2e9e53000000b002bffa625d0emr18110256ljk.2.1697024105878;
        Wed, 11 Oct 2023 04:35:05 -0700 (PDT)
Received: from [172.30.204.240] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id c5-20020a2ea1c5000000b002bcbb464a28sm2882350ljm.59.2023.10.11.04.35.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 04:35:05 -0700 (PDT)
Message-ID: <7297b408-06e8-41f3-a732-64c3cc3194e1@linaro.org>
Date: Wed, 11 Oct 2023 13:35:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 5/5] arm64: dts: qcom: sa8775p: Add ep pcie0 controller
 node
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: agross@kernel.org, andersson@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
 quic_parass@quicinc.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 mhi@lists.linux.dev, linux-phy@lists.infradead.org
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-6-git-send-email-quic_msarkar@quicinc.com>
 <20230921094823.GE2891@thinkpad>
 <ca898b48-78e0-4bc7-c88c-a33338e7e47a@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ca898b48-78e0-4bc7-c88c-a33338e7e47a@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_043510_089651_94E04682 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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

CgpPbiAxMC8xMS8yMyAxMjo0NCwgTXJpbm1heSBTYXJrYXIgd3JvdGU6Cj4gCj4gT24gOS8yMS8y
MDIzIDM6MTggUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPj4gT24gV2VkLCBTZXAg
MjAsIDIwMjMgYXQgMDc6MjU6MTJQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIgd3JvdGU6Cj4+PiBB
ZGQgZXAgcGNpZSBkdHNpIG5vZGUgZm9yIHBjaWUwIGNvbnRyb2xsZXIgZm91bmQgb24gc2E4Nzc1
cCBwbGF0Zm9ybS4KPj4+Cj4+IEl0IHdvdWxkIGJlIGdvb2QgdG8gYWRkIG1vcmUgaW5mbyBpbiB0
aGUgY29tbWl0IG1lc3NhZ2UsIGxpa2UgUENJZSAKPj4gR2VuLCBsYW5lCj4+IGluZm8sIElQIHJl
dmlzaW9uIGV0Yy4uLgo+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTXJpbm1heSBTYXJrYXIgPHF1aWNf
bXNhcmthckBxdWljaW5jLmNvbT4KPj4+IC0tLQpbLi4uXQoKPj4+ICvCoMKgwqDCoMKgwqDCoCBt
YXgtbGluay1zcGVlZCA9IDwzPjsKPj4gR2VuIDM/Cj4gdGhlcmUgaXMgc29tZSBzdGFiaWxpdHkg
aXNzdWUgd2l0aCBnZW40IHNvIGdvaW5nIHdpdGggZ2VuMyBhcyBvZiBub3cuCj4gV2lsbCB1cGRh
dGUgb25jZSBpc3N1ZSBpcyByZXNvbHZlZC4KVGhhdCdzIHNvbWV0aGluZyB0aGF0IHNob3VsZCBo
YXZlIGRlZmluaXRlbHkgYmVlbiBtZW50aW9uZWQgaW4gdGhlIApjb21taXQgbWVzc2FnZS4uCgpQ
bGVhc2UgdHJ5IHJlc29sdmluZyB0aGlzIGZpcnN0LCBpZiBpdCBlbmRzIHVwIHJlcXVpcmluZyBi
aW5kaW5ncyAKY2hhbmdlcyAobWlzc2luZyBjbG9ja3Mgb3Igd2hhdGV2ZXIpLCBpdCB3aWxsIGJl
IGEgcGFpbi4KCktvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
