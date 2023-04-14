Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFD59C77B6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 08:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TFyrDUxTV1SCkpAEHSdCInsObVOQy0nFn46A6RL9QFQ=; b=pADTbYeXtgqKqn
	TuWBrtVjn8EwH6AsrROdGsQD0bfm1013PGNA95thfosL05i+jZ6V/lnQfYidfKEwnFQLMf0ZeaxV/
	RriN92hZtcnxnw5B66fRU40d3VdqTnKut8wr99Qm9y+M2gza+zofd0KEmck+49RRd58z+2KFKaviU
	8kz0iHn+ZLbpK+joGTgShzIXJDNw8wBh/dy1d+8NSjLjwpxS5Osy5xP+lSdL2UIrNG2tV4lrl2r9a
	KUlk1HsXbVZi3xK2QNPjG7at9MiIer6Fn+QUu7QxuqIfuCdnMHiKCc6vZkYylRYkI3aDin4EqynBI
	zf12hQQyjceNcf2IuLPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEtT-008jIH-1o;
	Fri, 14 Apr 2023 08:34:55 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEtP-008jFW-0i
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 08:34:52 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-94a34a0baf9so407593866b.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 01:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681461289; x=1684053289;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MBhd+vki+l/y35U/QxrHM0V6qWO53SJzOsxvHiS3VI4=;
        b=IkuwrlTZ7zhdSP0BuUPKvyREuOd14Kbfh+OkUBnZYPh19M/pPTs1AehNACOKrDUdOG
         mS4MITBjLL7awLODadt0N7TgsMQrt20z+ehY4MsckGyU/ZLfEpRUMjJ6zZJFFo1pUHm+
         DaOoGRLicugjTWnlVrxNhWHsxHKyfybWO7o1a5FbdhVsF2XFWdtON7SqlBPMawhF3wMn
         FgcSDitIhYEKTfb/ee7KSmy9bA+543T+wqlwInRxiSu8cwOxfZjhq57bAYdmU3dSXrxH
         nEIwLbiwZWKYu1v4zqBLmdoTxBkfuWIR5SYBNxNo67kvqzNok8hvxQXzZI/WpPM9sHD9
         aXuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681461289; x=1684053289;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MBhd+vki+l/y35U/QxrHM0V6qWO53SJzOsxvHiS3VI4=;
        b=QbtBIyLVqaLzyesWbiUqyqFWjPA2lE/sMkLYwnvRPP4Ix7PG+QIRgD6wQBfn6pl97l
         CYERAOz9OP+1mSfUzs8p3771ReKv2uz9M8Tfae6PL1TwbeMBEy4aVjZOixEjkH2/Ciif
         +I4qjGR7OooqAJ7tgryJE+tsawd4T4HbLWG+ryMAXguiBKxNaUlWZQjmc324l0CXTidw
         lTy98DI8hQ/7zdwr7Vu2PDaqF1laRTz35sYIgP+neqYL866p/e8WoSeMdwcyxQjlFvB/
         sM4WbW9evecUqEZMlk9gUogrhiGlLmCejklgQh0BJ6ijyByCbL/sIOM5vaUJBwTplJIT
         dDDw==
X-Gm-Message-State: AAQBX9c7uRPi07FluFn8BxJRoCo2BFFFwil0phH5LOtLB3J6si5Hs5rj
	rZNzBdvYuFSKdkXJXpRY2R66tQ==
X-Google-Smtp-Source: AKy350b+AJCpD5JSQDbMuD6wVN5frKxcfCROijIG1NiaMj6S2xAmFKa5BnZL7BAyt/fgf8Mo/weUUQ==
X-Received: by 2002:aa7:d50f:0:b0:504:80f8:f6b2 with SMTP id y15-20020aa7d50f000000b0050480f8f6b2mr4795583edq.25.1681461289674;
        Fri, 14 Apr 2023 01:34:49 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8a60:6b0f:105a:eefb? ([2a02:810d:15c0:828:8a60:6b0f:105a:eefb])
        by smtp.gmail.com with ESMTPSA id j23-20020aa7de97000000b0050432d2b443sm1883036edv.48.2023.04.14.01.34.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 01:34:49 -0700 (PDT)
Message-ID: <f8a4fd52-52b6-dded-c8b7-864be549e2ad@linaro.org>
Date: Fri, 14 Apr 2023 10:34:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 01/27] dt-bindings: pwm: Add compatible for MediaTek
 MT6795
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 matthias.bgg@gmail.com, p.zabel@pengutronix.de, airlied@gmail.com,
 daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, chunkuang.hu@kernel.org,
 ck.hu@mediatek.com, jitao.shi@mediatek.com, xinlei.lee@mediatek.com,
 houlong.wei@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-pwm@vger.kernel.org,
 kernel@collabora.com, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-2-angelogioacchino.delregno@collabora.com>
 <aaeeb18d-f8e8-d6c1-1272-e5b797554b9e@linaro.org>
 <20230414083019.cpomx37tax4ibe5u@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230414083019.cpomx37tax4ibe5u@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_013451_256937_EFC13569 
X-CRM114-Status: GOOD (  17.18  )
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

T24gMTQvMDQvMjAyMyAxMDozMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gT24gRnJpLCBB
cHIgMTQsIDIwMjMgYXQgMTA6MjE6MDVBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPj4gT24gMTIvMDQvMjAyMyAxMzoyNywgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3Jv
dGU6Cj4+PiBBZGQgYSBjb21wYXRpYmxlIHN0cmluZyBmb3IgTWVkaWFUZWsgSGVsaW8gWDEwIE1U
Njc5NSdzIGRpc3BsYXkgUFdNCj4+PiBibG9jazogdGhpcyBpcyB0aGUgc2FtZSBhcyBNVDgxNzMu
Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vs
b2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vbWVkaWF0ZWsscHdtLWRpc3AueWFtbCB8IDQg
KysrLQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3
bS9tZWRpYXRlayxwd20tZGlzcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3B3bS9tZWRpYXRlayxwd20tZGlzcC55YW1sCj4+PiBpbmRleCAwMDg4YmM4ZTdjNTQuLjE1
M2UxNDZkZjdkNCAxMDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wd20vbWVkaWF0ZWsscHdtLWRpc3AueWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9tZWRpYXRlayxwd20tZGlzcC55YW1sCj4+PiBAQCAtMjIs
NyArMjIsOSBAQCBwcm9wZXJ0aWVzOgo+Pj4gICAgICAgICAgICAtIG1lZGlhdGVrLG10ODE3My1k
aXNwLXB3bQo+Pj4gICAgICAgICAgICAtIG1lZGlhdGVrLG10ODE4My1kaXNwLXB3bQo+Pj4gICAg
ICAgIC0gaXRlbXM6Cj4+PiAtICAgICAgICAgIC0gY29uc3Q6IG1lZGlhdGVrLG10ODE2Ny1kaXNw
LXB3bQo+Pj4gKyAgICAgICAgICAtIGVudW06Cj4+PiArICAgICAgICAgICAgICAtIG1lZGlhdGVr
LG10Njc5NS1kaXNwLXB3bQo+Pj4gKyAgICAgICAgICAgICAgLSBtZWRpYXRlayxtdDgxNjctZGlz
cC1wd20KPj4KPj4gVGhpcyBkb2VzIG5vdCBsb29rIGNvcnJlY3QuIFlvdSBkbyBub3QgYWRkIGNv
bXBhdGlibGUsIHlvdSByZXBsYWNlCj4+IGJyZWFraW5nIGFsbCBtdDgxNjctZGlzcC1wd20uIEF0
IGxlYXN0IGl0IGxvb2tzIGxpa2UgdGhpcyBmcm9tIGNvbnRleHQuCj4gCj4gSSB0aG91Z2h0IHRo
ZSBvbGQgc2VtYW50aWMgdG8gYmU6Cj4gCj4gCSJtZWRpYXRlayxtdDgxNjctZGlzcC1wd20iCj4g
Cj4gYW5kIHRoZSBuZXcKPiAKPiAJIm1lZGlhdGVrLG10Njc5NS1kaXNwLXB3bSIgb3IgIm1lZGlh
dGVrLG10ODE2Ny1kaXNwLXB3bSIKPiAKPiAuIFdoYXQgYW0gSSBtaXNzaW5nPwoKVGhlIG5ldyBp
cyBvayBmb3IgbXQ2Nzk1IGJ1dCBpdCBpcyBub3QgdmFsaWQgZm9yIG10ODE2Ny4KCkJlc3QgcmVn
YXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
