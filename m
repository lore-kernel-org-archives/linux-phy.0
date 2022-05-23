Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46AECC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 23 May 2022 11:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AresdC9K6glmcSdWA5ki6QLoX21or1kGLPK9Pk17lmo=; b=sCML0r+6G+zbP0
	iRSjIk/RDxN2Q2kn5CgwFFQCJjrPNbungetePpvRhhn3lfiiRmZJi2eNGq1EI6DMew6iL64skiqRZ
	lRtE9nl2a5gAY8ZpkXBWGYzmUCmfsLzqgT1DJVesOnlYS0T96NgVg7TO/ZELPEc9fbuUpSnOd6IxZ
	KTSURRdMitI6CLtvuY5I3FxRLNmWLXRf6Nrc7B8arBCmJLEE1yLXE3e275AOuWa0qN8gzHq3OlmtC
	uBkSl/Sn3WcZyPltVJTrJ6iJE7VdM6XVbCmI4ibuczOsKudAgHAthagZdI4pWkm/O4HlhWYh4V8Pe
	XYyktmHUEOrY+rywGLjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt6VL-003p8T-D1; Mon, 23 May 2022 11:45:43 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt5kh-003T3G-Va; Mon, 23 May 2022 10:57:33 +0000
Received: by mail-wr1-x42c.google.com with SMTP id m20so9645401wrb.13;
 Mon, 23 May 2022 03:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :content-transfer-encoding:user-agent:mime-version;
 bh=BG7Id+lD+AQs0Pegzcqk1XktexibNQHiu13oHrpbb3M=;
 b=R6hjr4vVGrFUXLG1QDuRZ3HDw6zAcnC9oR0wGnabT+tDUhO0BdqFnTJVAfJeALzc/j
 ZHvPBQbbc4Z2heu9EjRjiZXXTt2cbdQEvBNNXqhGbkRwt+cQXmgMJ7/hG6fERNlGnlsx
 SS2a01naIC5RPByBPFfaZBefQZ05aAJEnL9pZTrp6Z4Befp2M+K16xQ9Mi6VSuTT9fdK
 iygWO3hIFNhbxo64OndbysVlNlMf6ZCpzspjLznSa+T4xhjplCz2L4299OArzxRkG4eL
 UvvCugiIKttC7KT9lis3g0TzGRPLKsqKA6coX3ZK9CRs9lxK0jJYJS1ZR+oOvro/05SR
 ZkhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:content-transfer-encoding:user-agent:mime-version;
 bh=BG7Id+lD+AQs0Pegzcqk1XktexibNQHiu13oHrpbb3M=;
 b=2X4cIBpeEjIbYgu/qDB/UWEKTJqB9F/b+Gy+RL1njVqY/t+di7+K9pkiIreTeiO2we
 810BZZ0i4FN2nf9RBlBxElsrfhg1/euZgHK0H8E8eHldGwIjJRAxRDo9+qejLbNdt3TK
 GsprK1B1CWn20sMkZqbiuMVpoBcNHiSfqHW1s2WXf7U7CbljEe71CbB7JhSuUFd7dgvI
 62YfnT8QTFcj1FYZJrg8NqvNGzipYc4LvvwEJYmH/fYhOZfvf67weJhlSozZ1ISuR7IH
 5rwolZNldJC4aBo3NYwy7QLM80p+SzzJQ6xUConOFLJKI9keYjOV5aSsVXL3R3ScB0G7
 3RBg==
X-Gm-Message-State: AOAM533qq1OnQH+C92wBjToVr1SnsdBsieXoS3rdcBqknGYhUCvpyUOU
 Gu3rRRARq2hT6QbXU2stZDI=
X-Google-Smtp-Source: ABdhPJzcu/U7hQf2EKjkWxdjrxDDsZbj+4xkWy47utplrljg5CDn1H+9R4diFxBpCAClUAm6OUSYsQ==
X-Received: by 2002:a05:6000:24b:b0:20d:24e:a1ce with SMTP id
 m11-20020a056000024b00b0020d024ea1cemr10309067wrz.159.1653303449301; 
 Mon, 23 May 2022 03:57:29 -0700 (PDT)
Received: from [192.168.2.177] ([207.188.167.132])
 by smtp.gmail.com with ESMTPSA id
 p2-20020adfa202000000b0020adc114136sm11704389wra.0.2022.05.23.03.57.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 03:57:28 -0700 (PDT)
Message-ID: <652139e639c7e80795e01b3b4f88ba03b85d66c5.camel@gmail.com>
Subject: Re: [PATCH v10 03/21] drm/edid: Convert cea_sad helper struct to
 kernelDoc
From: Matthias Brugger <matthias.bgg@gmail.com>
To: Guillaume Ranquet <granquet@baylibre.com>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, David
 Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod
 Koul <vkoul@kernel.org>, Helge Deller <deller@gmx.de>,  CK Hu
 <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-fbdev@vger.kernel.org
Date: Mon, 23 May 2022 12:57:26 +0200
In-Reply-To: <20220523104758.29531-4-granquet@baylibre.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
 <20220523104758.29531-4-granquet@baylibre.com>
User-Agent: Evolution 3.44.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_035732_101031_F81534AD 
X-CRM114-Status: GOOD (  13.40  )
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

T24gTW9uLCAyMDIyLTA1LTIzIGF0IDEyOjQ3ICswMjAwLCBHdWlsbGF1bWUgUmFucXVldCB3cm90
ZToKPiBTaWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgUmFucXVldCA8Z3JhbnF1ZXRAYmF5bGlicmUu
Y29tPgo+IAoKV2UgbmVlZCBhIGNvbW1pdCBtZXNzYWdlIGhlcmUuCgo+IC0tLQo+IMKgaW5jbHVk
ZS9kcm0vZHJtX2VkaWQuaCB8IDEyICsrKysrKysrKy0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9k
cm0vZHJtX2VkaWQuaCBiL2luY2x1ZGUvZHJtL2RybV9lZGlkLmgKPiBpbmRleCAxNDRjNDk1Yjk5
YzQuLjM3YzQyMDQyMzYyNSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fZWRpZC5oCj4g
KysrIGIvaW5jbHVkZS9kcm0vZHJtX2VkaWQuaAo+IEBAIC0zNTksMTIgKzM1OSwxOCBAQCBzdHJ1
Y3QgZWRpZCB7Cj4gwqAKPiDCoCNkZWZpbmUgRURJRF9QUk9EVUNUX0lEKGUpICgoZSktPnByb2Rf
Y29kZVswXSB8ICgoZSktPnByb2RfY29kZVsxXQo+IDw8IDgpKQo+IMKgCj4gLS8qIFNob3J0IEF1
ZGlvIERlc2NyaXB0b3IgKi8KPiArLyoqCj4gKyAqIHN0cnVjdCBjZWFfc2FkIC0gU2hvcnQgQXVk
aW8gRGVzY3JpcHRvci4KPiArICogQGZvcm1hdDogU2VlIEhETUlfQVVESU9fQ09ESU5HX1RZUEVf
Ki4KPiArICogQGNoYW5uZWxzOiBtYXggbnVtYmVyIG9mIGNoYW5uZWxzIC0gMS4KPiArICogQGZy
ZXE6IFNlZSBDRUFfU0FEX0ZSRVFfKi4KPiArICogQGJ5dGUyOiBtZWFuaW5nIGRlcGVuZHMgb24g
Zm9ybWF0Lgo+ICsgKi8KPiDCoHN0cnVjdCBjZWFfc2FkIHsKPiDCoMKgwqDCoMKgwqDCoMKgdTgg
Zm9ybWF0Owo+IC3CoMKgwqDCoMKgwqDCoHU4IGNoYW5uZWxzOyAvKiBtYXggbnVtYmVyIG9mIGNo
YW5uZWxzIC0gMSAqLwo+ICvCoMKgwqDCoMKgwqDCoHU4IGNoYW5uZWxzOwo+IMKgwqDCoMKgwqDC
oMKgwqB1OCBmcmVxOwo+IC3CoMKgwqDCoMKgwqDCoHU4IGJ5dGUyOyAvKiBtZWFuaW5nIGRlcGVu
ZHMgb24gZm9ybWF0ICovCj4gK8KgwqDCoMKgwqDCoMKgdTggYnl0ZTI7Cj4gwqB9Owo+IMKgCj4g
wqBzdHJ1Y3QgZHJtX2VuY29kZXI7CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
