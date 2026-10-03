Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D0DCCA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOccQo1CdWhX760NL97Z2N86oEAHo0WYoBvyRcPUd7c=; b=tnbH1CpEpR42k1
	dmUAB09ZQ04rC/nXDxTWOvWq+9Wnzqvpvq4bEJRzdLTubm4pq/41noFrkTHrQHsouv0L1S4PAUzpn
	Z1dEKmkbTS+I/ILPgZ/5/QUMuphcboIwWZ9Puc53MSR+3ogLmgGv51cikRMu+T/Ye2OBhqY0bUs1k
	/rXDKV8RAHPsM2ezz8Sn/4y87Uiy4U688DUuK6bPfpnJ+GUpoRsoIKraF9GnHRfra78XVVaZahNTt
	L8Ve87bBlzxvFeMETZeVMUOWKIx/k1MqS9V2TfB8NXY8k670xU4DihooGzx6Fc9haWi/ZiREZz/w8
	o+l6gcFp7cIQ3Of5xPQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvfw-0000000DEfz-0KOB;
	Sat, 03 Oct 2026 09:05:00 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvft-0000000DEfJ-3VqZ
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:04:59 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c264788fd58so92599566b.1
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 02:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791018295; x=1791623095; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=0SCNo95/BixJDrCNj1e89Xl9YT1Mqeqtzc6x6damSjo=;
        b=GoCIqKQSJgFGL2hhMgM+h1eM2CRxhoJuZVb060y9wFtFhWUpISuwEpi4sEsfzRkqsC
         0xo9iHNGqCSAKaG7jJ1csJwCu6NcqMMJZvhyAlE1JydVl+6R6CPpXjr/WcPg6nkZKhGk
         OQrh9KrLNslnUviJWEaVpHc+Gw4op+regPRvLZ6jpI21FXhEwNjm/r1Vgy+i+g7Y3XEo
         eWMyC42OdlDyVcGH+88OQWlo51CMa4r2x9Jdz4SNvUZSHFc6il7QSSFBLzW3ZLGpRft9
         PLNNkkTV9vYgre4b8J0ZfUs7AzuA8aL2oyAe08MA41mUfxN2aIN91WVoUA1+xxPjK+te
         TTDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791018295; x=1791623095;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0SCNo95/BixJDrCNj1e89Xl9YT1Mqeqtzc6x6damSjo=;
        b=wh1j+SZ+5kLAZdiSpmitxuxrfiaRKXpt+EKAa3YF9IYYwoUyWcGiHWCqL/ravdcjbG
         SmFBXvunytQobCHuZQzRECqG2H1I5NwYgFjgRW8AwD3SQ1xXKzwnSCHrFQIKNeSjz84Q
         Cc6Mz+DKkVnwdJYinD/9D+wZASsQffjaDZlBeZq8UJHYfFbuuYWbI5P7MG/AhFwvT1TE
         GqvwhynvmrApZggbvmoIWlaFWI9OgvAdGNKa0X61EPcz6Ae1sfemyiiHzjNLjx9mfj66
         F4FGecVr2kV1Nzlpqwhle2wrDhxxyaaWmPY/XV029Vm6FdZgaZHH3IafsA1kTcd5E4Dr
         KzMQ==
X-Gm-Message-State: AFuF++mdIuoTWwRk97tTbhQSuCSntINvN+IAfRJ9mlwwp7hKvclk2V5j
	gNLnGdch315+iuyI4aKe9C0+/Pedpf1TazQUmEe1Zmw/SrrsalYqTcQwoaU6cntwm5o=
X-Gm-Gg: AYBFou27vjUvyFlDWTba8+CjPfd97nzWdBqzMvGdur/k4YbtU+PFdiENEZF9W9RMq2U
	/8EOD1TnrZVbYmlys+gamygl7iapcIc+ZKhkhb/2Q9HouI5YNlUThJMfn/BjhAHDWBQPEfAtjQc
	LFM/6duINZsmsOs15GDfuz4oXe/bfTgjnABL03qRjLzw3Q8pOOXJagdWgXD/V7CuBrPVRHycWZu
	+2CumxbVdgBO9ZyUNj5tBhEEdgHUwTAnw1uCLNbiEb1kyShD3rcwxFgac5gdvmerH9U0BydfCV6
	a0webuXMa0Rhhe8xJuik4tcnnV7MGZHgoyog5R7eOOJQ65GzxX6Xs5G5vfsLDoD0+aQzDzlfREg
	7e4ARv65op33K2U72loOjSS5HreuqcPwSZ0+4j0EBrV0PyTqJ8Bo4jm22DU/P1WfPBxrf1ioKji
	LrmLet9L0PJhFbS32ODy7zxjIsgZEn37vANJXuefBHTbskTnmpf56em0do4JSkpqG0QbRBqRGGR
	5irZ0bXpwQ=
X-Received: by 2002:a17:907:94cd:b0:c2e:3d17:5265 with SMTP id a640c23a62f3a-c2e4acecd07mr452317266b.21.1791018295547;
        Sat, 03 Oct 2026 02:04:55 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.86.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e71d5876fsm48745266b.0.2026.10.03.02.04.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2026 02:04:55 -0700 (PDT)
Message-ID: <86300678-cc2e-48ea-9421-b615dd263f24@linaro.org>
Date: Sat, 3 Oct 2026 10:04:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 02/11] media: dt-bindings: Add CAMSS device for
 Kaanapali
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
 <20261003-kaanapali-camss-v18-2-87ba4ebe0db1@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261003-kaanapali-camss-v18-2-87ba4ebe0db1@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_020457_907077_309AF7D2 
X-CRM114-Status: UNSURE (   5.90  )
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

On 03/10/2026 10:02, Hangxiang Ma wrote:
> Add bindings for Camera Subsystem (CAMSS) on the Qualcomm Kaanapali
> platform.
> 
> The Kaanapali platform provides:
> - 6 x CSIPHY (CSI Physical Layer)
> - 3 x TPG (Test Pattern Generator)
> - 3 x CSID (CSI Decoder)
> - 2 x CSID Lite
> - 3 x VFE (Video Front End), 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
