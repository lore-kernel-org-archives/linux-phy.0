Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0CA606EE8A
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 17:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iK1RK8LJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=xcba/lPW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ngjb5ndyNf8q8bUDWWZ57q2v7qFky593ejKVvkC045Q=; b=iK1RK8LJMdvcjvykYhgDrB36Vy
	Ky1fBsDJXNlego80VexllPXcnIDBRP8LOte7/u9MjalG1dtESAF/DtgwJPHK16z8LnYFNW6scrxH9
	e0ZRLkDIFpu1q4G8l/L4IjQUmwe8QPvkxG7YR4HZoyjSOMNV7Zq4lxV5bzDiXuBT/jC1S8vCFMquB
	5DnxT2+Nl3r2euuPgTL0mP/yJcYOhZP8fkSpTwyPsClvK0rBI+aZhyB27JO3IkX5Z6FVrhLOTq/4I
	epzi2ZyO689QGKTOCsZ+aFl13gdCxa70OZ6nOciBZBu0ZJ2ceMd2E7BGQ8AGpECaNRVJcbgcYCXv4
	Xgc0gRuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQSnI-00000001IFP-2k5A;
	Mon, 09 Nov 2026 17:04:32 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQSnA-00000001I8j-3jlu
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 17:04:27 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6ae305e3bd9so1831277a12.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 09:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794243863; x=1794848663; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VmhgsZdfI41q6bSk6Ws0aoyQukpnInOpVRPvZF0DgoY=;
        b=xcba/lPWwKhQtr/ZiZQDThBDqh3FwM/AU0XZVG2ZCwr7Vhz4kp2orYaJutZvruq6uV
         M2ZhKOemhB0B/FyXO/KxPmTCeoiXV1lgDIiGmEY/YnOPhQcM/2P4Q6wGkt6KdTALQRnW
         cgI91I8EoaxvTpV61Sz2+3Z7yG5oY7tAjhMyAXtenSw7XINjq40pioWXw+BorR89t+Sx
         rnZX0zXkC+gidfU3bH0OIjTEq4xsS4NCt6GOeXE7LkJUX7MAiut2dXJ09gshvPDfzRyZ
         tfBI4uiuH3ddGv5NAbG0ZeQewY/GG3GuKd44P5j3qc4FfXSpeAKgUF8ebdCeaI/zpg+V
         82rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794243863; x=1794848663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=VmhgsZdfI41q6bSk6Ws0aoyQukpnInOpVRPvZF0DgoY=;
        b=NQmBwF7dDN0VjmdVCqdIjY0ldoTkbd4mVGOWYtFO93e19BM2fQFjD1WXejGpmNZgEH
         V+H4HGKxt6tCAYlmSLNUT9ZdJARmHuiTLrz8EELQlW2dxwvUx8RIy1fk6oliVLWfKcB9
         IICJTAyJHA36Ll5De7ibEuWdb+sJsq5Dz+G2StSk8FmHPFNasnikf5jV1xTcd9zK5tEI
         QkZBNOzuVvDfhNlW5kIepocXmHASJTBe+pyZPj8InhdkN3rOgnb4s8hcmW8Nn/JVUEsJ
         kgGY0v0tRIILuEO0w7dBs1PbcFkmpH/auPfcktTfViwTf7XW48h55TaMtQuA0LJByRCD
         2KZQ==
X-Forwarded-Encrypted: i=1; AL+hErHuL1NnZFmJR05DFQm6BDi640ZPf7MMJr80ONxzMG9on6pZE24WsEzeVu/MR06mYuUNqXMepOSv6NQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z+JgjP86ck6BvloGEmCFmXvb5rtntraUFaz2BmDGc5ZlY6Hn6MO
	bRZQkCXeVJfopEN6e9iziJQAPtd5ySByiyNrdYsEdlLcTV3snVAbYVWy
X-Gm-Gg: AYBFou1MAQInTpi1isRx5q6yFhw1FErLMeBADDOHLrwMX7L9OlyOCre8EQC8FbFekwb
	NOocWzIuJEyogeCMVpFOi0t2tH1cPbDcj7NZ0MqoSJO7dLYfLw220DIh6ZSFyEIyI6RnNg9T2L2
	+uwAZsJxSmboaQ8zKh3R2+F1taXGxglCnmJR1g7DJDZ6S5A1Nzr8Gvv0q8W2XZBh0xAqknAxF82
	nKQWYv8GdqmWTuVq1e4lcSNaCqYEBvWjqwMGKxgLpZgWxxew2Srjcm3DnVucU8tCef333WooP42
	N3pOBWCMlTnD1cMkX60xoJpWDErJNnk9u2rfDoOI6o252DM6CJYOfWUVSuFJItCG87WmA9niIiS
	7CcwHCJCByBWG3D0B/FNWn6iJ5GbWxFCG313lSirc0jHNtnTgtzszhakoD8aJT6oRVn5Kvo/m9y
	8OpmcUJyf9RDYCwRUmLZy103EfFxPZLMbb9XllAEWQmTgoOkZm/XZxoL/cgZBTOkkbRMPwXB5bH
	tN+ykwloNTTdFw0/Ac4vYckjQpzWblPeVtAJUC3kFAN+XqLYo4z2ZLmY+cYlQ8xdWtM6hu9QR7T
	F2tRgw/BKeZMoryG1LCkfi47QHE=
X-Received: by 2002:a05:6402:2356:b0:6b5:7792:d82c with SMTP id 4fb4d7f45d1cf-6b756ad7482mr185305a12.16.1794243862514;
        Mon, 09 Nov 2026 09:04:22 -0800 (PST)
Received: from flare5 ([212.58.121.92])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b721ebe31csm1878937a12.16.2026.11.09.09.04.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 09:04:21 -0800 (PST)
From: Stanislav Aleksandrov <lightofmysoul@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Marko <robimarko@gmail.com>,
	Guru Das Srinagesh <linux@gurudas.dev>,
	Thomas Gleixner <tglx@kernel.org>,
	Radu Rendec <radu@rendec.net>,
	Lee Jones <lee@kernel.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	"Joerg Roedel (AMD)" <joro@8bytes.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Bean Huo <beanhuo@micron.com>,
	Stanley Jhu <stanleyjhu@google.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Georgi Djakov <djakov@kernel.org>,
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	mfd@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH 17/17] arm64: dts: qcom: Add Samsung Galaxy XR
Date: Mon,  9 Nov 2026 17:04:07 +0000
Message-ID: <20261109170407.2073295-1-lightofmysoul@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <3ddaacfd-59c0-4d87-9b8c-2caa85143393@oss.qualcomm.com>
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com> <20261109-halliday-dts-v1-17-289114ab8197@gmail.com> <3ddaacfd-59c0-4d87-9b8c-2caa85143393@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_090424_959296_6D324DA6 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 09/11/2026 16:12, Konrad Dybcio wrote:
> On 11/9/26 1:33 AM, Stanislav Aleksandrov wrote:
>> +&usb_1 {
>> +	dr_mode = "peripheral";
>> +	maximum-speed = "high-speed";
>> +	qcom,select-utmi-as-pipe-clk;
>
> Is there no superspeed / dp altmode in hardware?

The headset supports USB SuperSpeed and DisplayPort via its USB Type-C
port, I just haven't brought them up yet. It seems we need a new driver
for the Type-C controller.

Stanislav

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
