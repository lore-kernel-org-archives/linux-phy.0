Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B464CC982DA
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 14:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vht9Nep5S1Ns79Na5FkIoDDhJoFusliNS8XePTrFY/s=; b=lueUspNGWerJv/
	koPaF+pi5DAL9Qf3gMH7mShomzl/IQUSSnm/kc3xiAVQ31kO/zGcybbSAJK0YZ4kTrB9jsSOyheJT
	XKT9KXS1JUb3Wn5uZe6o3X30xxUprjm4eOO0JbTyQwmkigikDf6sZ9XNx6PhKOm+zvqoi8bhFPiCd
	28tD9p9A4MPeHHhMt4PaoxeAS3dXA18t1bdQPuFm9/diWGKKgl7sMCPZEB6MDIujA2iOki0a7cxks
	58UESArrWRpw2VwArJRbjKbwIsUE3wIQ8o+C1tdLA5cT17FIXaVLyQgmT3zecDfF14Tr9GZBtjm6k
	s9vUakZzvitMDt7wH8SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ZZ5-0000000EiXO-10g9;
	Fri, 18 Sep 2026 14:27:47 +0000
Received: from mail-ej2-x1c.google.com ([2a00:1450:4864:34::1c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ZZ2-0000000EiW7-3PsZ
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 14:27:46 +0000
Received: by mail-ej2-x1c.google.com with SMTP id a640c23a62f3a-c29d33431c8so108025466b.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 07:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789741663; x=1790346463; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BnD2Ei89mkiOFb1zZQQ79Aq7EmWfIQzBftxY+5mS48k=;
        b=MZlyFXL2ctk0jVZCsj5SEAzPNrY01guS+vxVxQ2yzz83XjvaROy5C3Nw1zsS5ihU35
         7GVrU19lwFxLARMYc3SMG9JWWhCbvxCswf6rV+Fb6qgbwBvsM+DXRmTPf0JdVEzJ0ocz
         n6kzNKz2mUy+mbL7yAaFralUhJHAMTIYR2S6PzxIlblaAN01M65SOLx+AGxBhnnVT79k
         kdxiRloQVfvqDkOBT8OLGEH51rahlv2tS7+2d3yG/rZOZ7SWE17zs4iJpshW9pgW9Mbs
         zVTKSYScXU2kOL4mUVoC1Kj1QLupB/j/E3tXafCG/ENUmaaBLCPVP0oQXCaG6yxU7KWv
         UR4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789741663; x=1790346463;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BnD2Ei89mkiOFb1zZQQ79Aq7EmWfIQzBftxY+5mS48k=;
        b=jNRzoshK16nV1qRv3QjpqMw/5HjCYk5PjNcsd/97PrSPAzn5AY4igTSRujRfxXR8Lu
         Bbct9zk65abUARwqNg73B5wGBYy03JHEwzsr27tiQ4WHNKcWWAy8/6Zp7JBtWqiyFlC4
         ZwKMEVAZFgsqb/DTSAvrrvi5RvCMq7P27KLrfftGDeTf6F7iUYMAvdF3DKT6lrSv6NL0
         D3+6vc6Hj1tPFJay9Po4bakTiVzLdpn/cT5fMMRywXZMsJl30cNy6d6oMEJjkUcGXnEw
         Bn7B/fc3Fhgjl82Xgifvqd+bHD6xMbXoB4ArZRQZjn1yKxPg+O/gf5NeTyd2Vy5Y5cU3
         Wgcg==
X-Forwarded-Encrypted: i=1; AKwUvBzKXMTZ6aUBmE0CAxjlAFPQcF1R/ZDiLfBZJbIFEo9V4Nr1hIYeYSzL3mag4hyYUvqGnJgYwmvuepY=@lists.infradead.org
X-Gm-Message-State: AFuF++kuCRIpiuOotyRRV/G8X3Vdp6mNzcLz5e6baZRFibkg+s8UswUC
	rKuHhOhaM1X3VmzcBfx+pB13IlwYgR+5BlwV0FoWeLzgGfPrQKnFIbndUcBS8C8wre4=
X-Gm-Gg: AYBFou1WWZmCb1jCAEb+QBEfN2AhRT1vrqZpQBzqwcElQyaQ79+Nkn80+QKAPCos/It
	uH98lhhBxiKor/rM6F95+Sp4yjLe4Ao8pet32tvediH5kDk1fSg9uPT/FCzRnxll7HpwjcXt8vd
	hOWY4gWtEmRBc0X8LpYtqj5b4ttPKSaR8I0mQKz/lc74pYMANuCtjhuDTiJNYQceclRJFhOrGPL
	N0gsNBKg4ZrAw7vby3nRwv8SdEw+UiSt8RFpkSDfFwyEKlXM+X5t1FXy9a97zCRq1LHTFkHJ9WH
	s40tbjTgDXfkuxnQFgpjUTi+vIXPa9DAoPs+BuOkXnGUXUefkOjjlAeKrPMUPWA1r4Jqd79zuAy
	9q3nV711aQkYmY+7PSBdRlKqhkAyU91xO3YP+hd4Mgd3QIgn9QqjUlrOSHnXtulf9lcS6++o6tA
	8DJulVMAJL3KKgu5m1FOM9CcecVYBLj/Tk11H7RWYCEW9BHWx5tiHy14PYC44raqeNZikHD110w
	Y5nNKYmBg==
X-Received: by 2002:a17:906:478d:b0:c29:5a76:72be with SMTP id a640c23a62f3a-c2a157c41a8mr252060066b.24.1789741662748;
        Fri, 18 Sep 2026 07:27:42 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.4.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2a1bb8ba5bsm61582566b.45.2026.09.18.07.27.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2026 07:27:42 -0700 (PDT)
Message-ID: <fd6bf432-0ce8-4793-821f-f08321b13a5b@linaro.org>
Date: Fri, 18 Sep 2026 15:27:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v20 2/6] phy: core: Add phy_get_by_of_node()
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
 <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-2-dc244e124e71@linaro.org>
 <211caa95-dfbc-427d-8ce8-49cc76c24124@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <211caa95-dfbc-427d-8ce8-49cc76c24124@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_072744_869666_92672A94 
X-CRM114-Status: GOOD (  11.84  )
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

T24gMTgvMDkvMjAyNiAxNToxMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+IMKgIEVYUE9SVF9T
WU1CT0xfR1BMKGRldm1fb2ZfcGh5X2dldF9ieV9pbmRleCk7Cj4+ICsvKioKPj4gKyAqIHBoeV9n
ZXRfYnlfb2Zfbm9kZSgpIC0gbG9va3VwIGFuZCBvYnRhaW4gYSByZWZlcmVuY2UgdG8gYSBwaHkg
YnkgCj4+IGRldmljZV9ub2RlCj4+ICsgKiBAbnA6IG5vZGUgY29udGFpbmluZyB0aGUgcGh5Cj4+
ICsgKgo+PiArICogUmV0dXJuczogdGhlIHBoeSBhc3NvY2lhdGVkIHdpdGggdGhlIGRldmljZSBu
b2RlIG9yIEVSUl9QVFIuCj4+ICsgKi8KPj4gK3N0cnVjdCBwaHkgKnBoeV9nZXRfYnlfb2Zfbm9k
ZShzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+PiArewo+PiArwqDCoMKgIHN0cnVjdCBvZl9waGFu
ZGxlX2FyZ3MgYXJncyA9IHsgLm5wID0gbnAsIC5hcmdzX2NvdW50ID0gMCB9Owo+PiArwqDCoMKg
IHN0cnVjdCBwaHkgKnBoeTsKPj4gKwo+PiArwqDCoMKgIG11dGV4X2xvY2soJnBoeV9wcm92aWRl
cl9tdXRleCk7Cj4gCj4gSSBkb24ndCByZWFsbHkgdW5kZXJzdGFuZCB0aGUgdXNhZ2Ugb2YgbG9j
a2RlcF9hc3NlcnRfaGVsZCgpLCBidXQgd2h5Cj4gZG9lcyBfb2ZfcGh5X2dldCgpIHVzZXMgbG9j
a2RlcF9hc3NlcnRfaGVsZCgpIGFuZCBoZXJlIHlvdSB1c2UgbXV0ZXhfbG9jaygpCj4gbGlrZSBi
ZWZvcmUgcGF0Y2ggMSA/Cj4gCj4gTmVpbAoKYXNzZXJ0X2xvY2tkZXBfaGVsZCgpIGlzIGp1c3Qg
YW4gYXNzZXJ0aW9uIHRoYXQgdGhlIGxvY2sgaXMgaGVsZCwgTG9pYyAKc3VnZ2VzdGVkIGFkZGlu
ZyBpdCBCVFcuIEl0IGVuc3VyZXMgdGhhdCB3aGVuIGFub3RoZXIgZnVuY3Rpb24gY2FsbHMgCnRo
aXMgZnVuY3Rpb24gaXQgaG9sZHMgcGh5X3Byb3ZpZGVyX211dGV4LgoKaS5lLgoKcGh5X2dldF9i
eV9vZl9ub2RlKCkKewoJbXV0ZXhfbG9jaygmcGh5X3Byb3ZpZGVyX211dGV4KTsKCV9vZl9waHlf
Z2V0KCk7CgltdXRleF91bmxvY2soJnBoeV9wcm92aWRlcl9tdXRleCk7Cn0KRVhQT1JUX1NZTUJP
TChwaHlfZ2V0X2J5X29mX25vZGUpOwoKX29mX3BoeV9nZXQoKQp7Cglsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZwaHlfcHJvdmlkZXJfbXV0ZXgpOwoJLyogaGFwcHkgZGF5cyAqLwp9CgpwaHlfYnJva2Vu
X2xvY2tpbmcoKQp7Cglfb2ZfcGh5X2dldCgpOwp9CkVYUE9SVF9TWU1CT0wocGh5X2Jyb2tlbl9s
b2NraW5nKTsKCl9vZl9waHlfZ2V0KCkKewoJbG9ja2RlcF9hc3NlcnRfaGVsZCgmcGh5X3Byb3Zp
ZGVyX211dGV4KTsKCS8qIHdhaWxzIHBsYWludGl2ZWx5IGludG8gdGhlIHZvaWQgKi8KfQoKLS0t
CmJvZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
