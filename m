Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63DBECD6E60
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 12:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlITSGgMlG6nUmBqbCr/9IuvzM9t2D7x0mIxpn6cNHE=; b=G3zv5niAoo/e0c
	f4VZVRvuizfM/cLTrdZ7THWaicghP8TjzMCif8Gi0FAywFjOd5BAGYI8c5ssSbMxcobsCsA2yo0h1
	Ulz5i0jhqQaNddwD4URW1CqCY0hpdwv0F+XtxaSaaySlhno6er9vKkl8wFoV2NVVm/o1CBvvDAe2v
	J6Jy8A9BhafwAEyU9MJ75Uzz3ktmU7s+XKUkxj0h23eRNFpOB4wy021JM9uikvBHwAhTd3CAD7eGb
	RMUOTNSya1qEt7l+v45QbdtBtL4RyimhZ7AnY7I3V+MYy/8JcEovTewd+ke+Jg2otLYxIUj886nnX
	RSUqEab9ngEO2szRVB4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlAQ-0000000F6Lz-3ryf;
	Wed, 03 Jun 2026 12:57:54 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlAL-0000000F6LP-18Ga
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 12:57:53 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-68acf0a15b3so10650082a12.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 05:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780491467; x=1781096267; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AA8bcGrflv3zc6PRP3K/cb0tnkGVq1FBamekCJeKaGA=;
        b=JNjzpJNMJ5z/VE1AlHJd/YrLAz62UhXGG8ESUgDfJ2yFknV/34VFBBK4DD24OMcz8d
         AGVcOGAPo5XPG73z0MsXI+qaAEcg6UhXQm04ptEQH55kM/MdNt6UpbCQOovSsjyQgKVO
         yuj/kQDZNJWlvKc3ZtXJyTN/a0a2/XreUHmMn8xEP3xR0sPCdJxd8Z7T14xUoSZkFs8E
         6BLTqHjyZwKN47+G+36e+aDkm9WipmGIy7nDH6tXwwTkWwPZxxK82cllQAa8HAALRqMQ
         05ku4KD9M+Is61i057OSct7989IhbjxL2zFem9nDumDOrX84xEw+fY9DU6us/Wy29cP1
         yiNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780491467; x=1781096267;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AA8bcGrflv3zc6PRP3K/cb0tnkGVq1FBamekCJeKaGA=;
        b=WFIpNNYSzSGjajnCnrH0hzwrSdrcRevHX8TALE5GPJVPEkpCnvIOcjVD5xGjLqECLn
         InuCUc9ebgTBv4SZcgVoTkRuPoqMqXqzM5hiw0X0FB4KPskKzBX3Bq9Sek4+4ZffOVy7
         h7FVJFcfRFDHfOArhQyy+C3fpWnCBtG2OqKRgu/S7Ho0z5C/5rpspZnspbrqI+KKIHqU
         KXCMWAIH4oGcjglDsKiKwpbVaRtLFWp55qdNsBcSwJu7JB4T5XZINzsLseX6MxNodQnU
         B6tocE5c26fupXOTV5ZBjPw5QnRyNLTkw3hAlwGXJ/tjvD0I2f4QQZxjxBYw9AlCBQ3I
         M4Cg==
X-Forwarded-Encrypted: i=1; AFNElJ8lm8ZjqHMHSi37QNDLC/tYrpz/0lwd+p5Xdq9tdGAKdPhueKr/wlRC/0cwCymHmgMMCuFqccZfaKw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxoOXP7MAThGjBbepNKQKzXQWlx2bM+W2cac50VtFGuYl7dIXqw
	1NfntphtIpJcQTLlTDarHHzjvdSwmjt6APPxO7qB81VzAtncqkLP3f5dIrXGosNn2gA=
X-Gm-Gg: Acq92OG0SgnFat5kbSwTw9xl7axfWInQyIWsuL5Dtr08Lo4L74rmHhWu8/hS6K6EOdM
	VkeUjBmdZWZmiCckJ7WzQcwJ14SWY5XAayvLuJxltXQNxCEDw0jEWpbBnKdD4Tsi6ChA9wYJNQV
	sFIu2lJbeeF/jo8n9sErU8iT5QaX5sbOhx3m8F60iatt56s8DZaJJES+mv4zwKe13zI+3+hucIw
	3YXwesEZsvq+VBIc5/psSZ7BaclJVzQWHRHKo4QhJtz7mTUQNjc9ZdlfOnnmmrjxWiS5v0jf+3U
	l/XxFpBo3qMIxW/GpwLqod6heSZfvfOLQiORZr1IAtrLJJ5YOQx5d5NULS63Iw2oYzccUtzrUH4
	Kkiw5OzbEx2gyfd1O9+Qt3GHIgeWsg1rQUo2b+k9ZzTMYAuaI+yOD/J3VLsP0yxg6/hHJWhxN3Q
	PGYw0SdEMYczm0O2VJ4nuj7yHbFEpR8/BIU+CuUg9onAOzVg==
X-Received: by 2002:a05:6402:5242:b0:684:32ec:2332 with SMTP id 4fb4d7f45d1cf-68e6f4b5a53mr1709091a12.2.1780491467112;
        Wed, 03 Jun 2026 05:57:47 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.42.178])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68e65851786sm1107720a12.17.2026.06.03.05.57.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 05:57:46 -0700 (PDT)
Message-ID: <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
Date: Wed, 3 Jun 2026 13:57:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Bryan O'Donoghue
 <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
 <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
 <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
 <v4vz7cistjb2iuzha4oykglar7duw4y2uuyhumzs33yvpwrxcu@i5tsg4uzpuwc>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <v4vz7cistjb2iuzha4oykglar7duw4y2uuyhumzs33yvpwrxcu@i5tsg4uzpuwc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_055749_327168_10064B52 
X-CRM114-Status: UNSURE (   6.52  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 03/06/2026 13:40, Dmitry Baryshkov wrote:
>> Are you sure about that ?
> Yes.
> 
>> ipcat I thought designated lane 7 specifically as clk-lane i.e. named it
>> CLK_LN of some description.
> Split configurations explicitly use other lanes for clocks. E.g. check
> the RB5 Navigation schematics, CAM0B connector.

Can you please check:

CSI_3PHASE_COMMON.CSI_COMMON_CTRL5

0 LN0_PWRDN_B Lane 0
...
7 LNCK_PWRDN_B Clock Lane

... just a badly name field

CSI_2PHASE_CTRL10

Bit[2] = IS_CLKLANE

Right so CSI_2PHASE_CTRL10 controls lane mode, indeed. Thanks for checking.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
