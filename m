Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2CEFCCA463
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 07:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9oP8TMuPT7C3FTfBzGlUR4Lz1KW95n5Zj4RTnHA/A4=; b=qPWF89jbr9t3n1
	Y9Df2jsBJwmvfQ48xqqhGJ0jqQEqbnT+Lnrk0iIPxY2kQEji+I1LhUnxEis9hVVPv/b8pq6UEgBPR
	3s+SgTZsUtMjFuXjn5m1E+cHPMbzeipBCglQhDFZr5nrs6mqYau7TaL3ipHIcuy9oSzPmvDFaGBZT
	9F9spPu+X1Qr8MNPFQFOAdUZgpha2Zj5KDXusF7MHftzbW8yAoerWRWRE9UuSKC0lcNHOktsloGcV
	vop5OSx2BLny4CxF8RsbL5JOItUeaJRs0q7pego5yDoFmpIEBtY0/4vgAdexowMgCkhha23zEwPcp
	7olLbP54KbdRFSxTzRfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHyTJ-00000004VCt-3leG;
	Sat, 17 Oct 2026 07:04:50 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHyTH-00000004VCa-39yN
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 07:04:48 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4a1df146015so237725e9.0
        for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 00:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792220686; x=1792825486; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WbAvIHCV2ZftO19xbd69sV1gKtlfgITtC4/NwtZnAR4=;
        b=X2TM/7bLiWP0IKjwZDhxh+buxe1oNH1h81IcZiwde6qTnrzCvfCBRcQjrKKFw86ijo
         a/zdHxqfK5Rl20tYcSRrd2BbIxHpisygeJq+7Hwpb8EnjTtdOkqZECz3ZJwEn161m+06
         kXSsJYydYrbM5IL10B9LSX6x3RGw3PCL0Pie3rZJzLNEPtlsoO9iSPVQYgn3TjyB37pz
         ByRK2nlfaVN6Aoz05AUYpusv7ldYwBm6lwFppTnPMgkXr5rIYWDCKL0jW13t2KQUhPTT
         v13HeY2L8mEKXBSAVplgHT6ARDmxYtCjvlf+1ZBj91nCRi3HSk9aQPIVphW88laflfDx
         IGPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792220686; x=1792825486;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WbAvIHCV2ZftO19xbd69sV1gKtlfgITtC4/NwtZnAR4=;
        b=iv+YgDBHJFhWuOIPKFUT2WC+Fvc4XZZXtDF99gGDa2BJeVE3W4pX+4mpR7xt5pUCjO
         WewG2Z1NFfjfXh1zyQ3I1VsjIht1cSa1NtAg9ItXRAzcFQXshvkWycF+j+5mRM+5kRF6
         2UrqhMVxwk38Qibbd90KM0OvSnFvGeSxVZGLTcnutYb4HcIvW4nARc8HPcAIO5K5KW28
         6kApaz/FgSjgZqpZkkBPfqpnuRSXHcSCR84bx30jgyYQDfpC5+7cYJqGlz6u/ghGmPuA
         VYH/r/GccHbfGQJ73ZzY2zOHHW+JPEQ85zNY8ZXD3QIFQmRLHNo6XNo3KohS3a8c8V5H
         Jt9g==
X-Forwarded-Encrypted: i=1; AKwUvBzdy6NRoJNdz7AKPsdGpYGwpr+vPxImPsTpeYIOVx4ud9Jt4q4wCCJLAc00FC1oOrva7E1M9J1Z6ks=@lists.infradead.org
X-Gm-Message-State: AFq9FYJnjSmcA412+fixEccuGlC0Fc27dth/Nc8HYh1qc2dIF5A6pEK2
	4eeckt7dIP2RArhkYEpE2VME/5WMHR/1IYMlS6X4FZ5cqF/4hHaFfrqw
X-Gm-Gg: AYBFou2X+jrUsnddAFi3bjv87Etd9PLtgFAPllWpb8azIpLKkxq6sTsAXNIYbQcS4Z6
	0FofrSfvQZJ9GysrVc49xuvnrpFpFRANBOPI6Mw19Fm5J3QQYZwTg9PHETjxDFa1Nc98s4uRyHP
	YCOffwOW681QQN5iv8+SnPFJOaX/vba3YZfgODhaN50uzyUS/nuvp/ZIip/9uZUCPHLJA8h4UJk
	eYBKCI9s9R26mcpqpv7NZQnYnrmjmtnuFFxMCphQRyS+EVe0ciXqJZqPQLjh8yxCQqE/1SoCxHF
	z3ixXdpOBLeL1tCgU8qWQBR3zTiCZ+my/V8pRMkQioD075FWEk/t07VMAh85Z5YGy9GDxrsTZPp
	buO2H1Y4UhkuMXQCt+J0ktaftkTXmFVB9wNdgUZRVVBi3ZI+j2Sg49/0fzM2zTOWCNe9JyrHgQ9
	TnFsl2rCDdHDSMYIxRV4+grt/BWQmwAzB7msXyvIrKfpio9c+A5b+I5CXud0+FrZL5uCRmQAaQ5
	1LAnws2Uc38fGLtaVQ1YfwmmPKiWEMNUzwqtlwox7l1UBqJx0Lkm7/RNlwmE094/hkEX4gq
X-Received: by 2002:a05:600c:5251:b0:4a1:9663:7639 with SMTP id 5b1f17b1804b1-4a1d76315acmr38850985e9.34.1792220685574;
        Sat, 17 Oct 2026 00:04:45 -0700 (PDT)
Received: from SP11X1e.cable.virginm.net (cpc99340-croy26-2-0-cust244.19-2.cable.virginm.net. [80.193.62.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1bd9b35a6sm194605425e9.6.2026.10.17.00.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 00:04:45 -0700 (PDT)
From: George Neacsu <geocausa@gmail.com>
To: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	David Heidelberg <david@ixit.cz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
	Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
	Suresh Vankadara <svankada@qti.qualcomm.com>,
	tjose@qti.qualcomm.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	jigarkumar.zala@oss.qualcomm.com,
	hariram.purushothaman@oss.qualcomm.com
Subject: Re: [PATCH v3 0/6] phy: qcom-mipi-csi2: C-PHY for X1E80100
Date: Sat, 17 Oct 2026 08:04:43 +0100
Message-ID: <20261017070443.989736-1-geocausa@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <db2fffdd-634c-4728-a2a6-2ab1816b07ba@oss.qualcomm.com>
References: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com> <db2fffdd-634c-4728-a2a6-2ab1816b07ba@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_000447_804567_5F2A6656 
X-CRM114-Status: UNSURE (   9.11  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Anusha,

On 17/10/2026 05:31, Anusha Arun Nandi wrote:
> In our series we split C-PHY hw-ops into a dedicated
> phy-qcom-mipi-csi2-3ph-cphy.c (mirroring the existing -3ph-dphy.c
> split)

Thanks, I had missed your July series. Your three series cover what
this one does and more: the generic C-PHY API in its own
phy-core-mipi-cphy.c like the D-PHY one, the C-PHY ops in their own
file, two SoCs, and the CAMSS side including David's patches. The split
makes sense to me, and two versions of PHY_MODE_MIPI_CPHY should not
both go in.

So I would rather build on yours than send a v4 of this series. I will
send the X1E80100 sequence as one patch adding it to
phy-qcom-mipi-csi2-3ph-cphy.c on top of your series, and test the whole
stack on the Surface Pro 11 (IMX681 on CSIPHY2, one trio at
2.4 Gsym/s), with Tested-by on your patches if it works.

Review of this series raised a few points that I will check against
your patches and comment on there:
- the settle count computed from the timer clock rate instead of a
  fixed table value (Nihal);
- a u64 symbol rate, so 32-bit can hold rates above 4.29 Gsym/s;
- trios instead of lanes in the C-PHY options (Loic).

Also, Vinod and linux-phy are not on Cc for your PHY series.

Bryan, Vinod: unless you would rather take this series, I will follow
Anusha's.

Thanks,
George

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
