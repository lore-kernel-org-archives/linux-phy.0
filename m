Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00291E75448
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 10:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sJ/pI35SmMLwywVbRAjjOPXe4kP/nWBQ6LyE2/k49wo=; b=ZJa7Yxgzfz8CJA
	sHr8KvjgK7VIosJgn7MIzn/XFJYgVmXyUlF2F/pCwF9tz8Li05KS68R77VdzFKvh3yL2vhSQqqPVN
	PohmHqsI2fydCF4BhgHlGIhT/F1Kl6bJskYk/Dbm9TZV1b/cZfWe142I8J3Gd+WZ+lrRAlk4p/mbM
	veYJEvekLX2qVLPf+mQjBDZBSgAnBStSj4HAi5s9ts+U3VxeLznVZNS2SOLPRjgGvn7/ZOlRGKQzG
	sB3sSMeh2FH+ozFygr1Cgi1kMzP22d+RdhsO6D55L4fWdj1vmS+KEPZmOc81H7VoQ6525zMIhrBwZ
	aiwIqgkF3OSPyEePi/lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMV6-0000000GiAW-1oqc;
	Wed, 24 Dec 2025 10:53:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMV3-0000000Gi9l-2GGo
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 10:53:50 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO8m1hh1206657
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:53:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=rieNRr2oJhj28iSYb1CzIg
	qJgKQi08tHB8PfRxFDRCA=; b=BRiG84RN7bl3xX391ojCSvhkM8FnI5cZy6TwTj
	Qby9Sgg6TKk9NBwezFXqDonoBgJOHJEmhXQDhRUlZkq5LjhaLs/9osm2qwa8KTwl
	eEc8XCtpGfJy1fk9m3DgTMZgskJOxXudbRtKy+7yIV5meSDUUOQiVHY45COpNBWq
	AdPg5C497ebE43WEXht3AxP9Jq9mX8HiOQmuoVRjvDpfvjqXJIGprCwxPnqxtXim
	guF6ZtsKQ3fyON+DuDhkCZWWFKRiJyxqh80aLRLU7+uKaGkRqHBOkWhF9C67lXdp
	FnzOnuo4vL6NCeVKrZYd7pYqmo3iy8UM8pdhWYEy+Z/KmP6g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b827r1vg8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:53:48 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed782d4c7dso100963331cf.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 02:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766573627; x=1767178427; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rieNRr2oJhj28iSYb1CzIgqJgKQi08tHB8PfRxFDRCA=;
        b=hhK43946TF72zVJ2KdZWQh2iw/yM7s/N/mDIQyHtVUj6FYGGL6onKPZ8Ulmwh2Ob4Q
         A7VNLGJKy12QGH97De16Cc0UrDMfdae8bdEsw8mFNJyn95e5Ep9CxPgXA2J+20ln5mQX
         iEgjv8jdM78chYXkKBsuEEMYYieJh1D4JFqejniU5AIlRE0g9rcndn2t2Mhgd5nFTvU5
         5DUgfu5jEVihfPpag0BZ0+64/4MmdL5jHvwPvLcfPZSjUilz7Q4GYeITXp1EbCViwIVh
         MM3PEwhgHGqTrMZzA2KUq8Mei7OPgMypY6RNfkBXjmEl6hF52Gp0NOUeYn0AMmsRJ/Ms
         Rk9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766573627; x=1767178427;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rieNRr2oJhj28iSYb1CzIgqJgKQi08tHB8PfRxFDRCA=;
        b=kaFCnxS9V7kmnEYMRWQjJz1eFzYtMxssdc3n3Q83DWRn7bTCOecV4pJqRF3yI4Wk46
         LBuxCrADLj/WMKd0zbE9JzX8gCk9k/ylDRE6V75uNBEWqyIYD93zj2Z/VpO9ulBd2NTO
         4WTrzw0Rw4oj7rTH/2rtFmwM5kqsYwFcPB+Bsj71I/eD5xePp19wtSEdiIiF3ImWR8yY
         +91ofilIkTojwhJu/F+MUayCXzXeXx1nqY/LcRq0o2OahOJ7tF1H+wdy76up2HZveSg6
         khFzdiyJzqWz8P52e8DD4Y5mcqzaeorVE5GKWnXlxYmiAYA9uzZfnckin+/wfEgvOKIO
         5oqA==
X-Forwarded-Encrypted: i=1; AJvYcCVpA1iaLIBe/c+U32rda7YVIIsz81OscTAXZUtWNcVMNEX3tIL7jW/XzA/7qQ3S/cklVILLtiDwxhA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGM7vzqyOI0ruMUlh1uu3gOIjrVYtMjBOi1r8YzGFW8JRQOTuP
	cK6zRFCWtQ7ta8EqON5wBKmmNrr3JWP0Cln5ZTjtvTWkuAuzqUpPwZS/TTKY3IKRoAG3lo8sUBJ
	HxvmguG4EoT6x91am1lnwZg1oowcVxJBTRdZ1Z4cdNlhV02sPWgFi/4BEj/oPrtc4ksk1wlB/0Q
	uC
X-Gm-Gg: AY/fxX5Jl3/lsXZzYMPc0SpJnhQW/jMJ6bibPBjJLGao2EklqzrgOLN1u4URJe+ppuT
	KFkhVWdrIucy62SVNpqlasdkwgrTW5lfAKvrGWcoNgkLRU0AGe24ZG/jhFvmqW5s7BlCXULVQgq
	+cVjkDYCchr0JdUZ+PtC+iDKv773xJOhrVSeGqsjfcVZSx8/ZHebkWYoMcYGIFdjCWYxWfOZwN/
	vOBwQhV+npLbGFmTfSsob4Dgo6PUwRAYiI4hiiQvo81iUfpweW+xXuaeO7My6T8FuOabb4OlMDk
	lC/5z1V7XUeVBeWiNVrwm+Y99RySRy2Z0nrWtB2RozvaTzNgOCjedxXDuswW5QvTfXU30Dv++/f
	Z6efwhvUyRPADmNc=
X-Received: by 2002:a05:622a:4cc5:b0:4f1:aa2d:81cd with SMTP id d75a77b69052e-4f4abdb8a8emr240490311cf.65.1766573627126;
        Wed, 24 Dec 2025 02:53:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETazEDbIJBda+GTQOv1dPkraEbLtIPmiNvRi1Xo42NQLnzp14Ln+KWlN/ubdXGJHfrZEKtkw==
X-Received: by 2002:a05:622a:4cc5:b0:4f1:aa2d:81cd with SMTP id d75a77b69052e-4f4abdb8a8emr240489931cf.65.1766573626483;
        Wed, 24 Dec 2025 02:53:46 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab86cesm1737562566b.19.2025.12.24.02.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:53:45 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH RESEND v5 0/3] phy: qcom: edp: Add missing ref clock to
 x1e80100
Date: Wed, 24 Dec 2025 12:53:26 +0200
Message-Id: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
MIME-Version: 1.0
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        stable@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2646;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UEqwWgA4eY1trHsHO9E8LHZDjJ0i6VTelWd/QktAPfk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8YuxWVgYyB+jUMg7b1RFEbY4P4Sb1KSxHbhC
 mqlnZRveiWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvGLgAKCRAbX0TJAJUV
 VqYuD/9fo1rl9jefHGu1DOuP1zCkKx/VCFfo11G4rK3IbF+SvrgGxuhjJt/JTS61IlY9aYUG9Aq
 c6KsVkx9AOrudP9CwQmwyBLsUzwP6fLh/id87Jsik4nfOtKOhIXUFnwKGLhENA3115vwsClW7gm
 OWnc4KgYGRNCusTXGj4uTLnnkA7Dfu48sozRXxX2lkV9XsxFCSchhoXtvsDnvPrb6WebPRJLRAt
 2vSomz1pKG1UBn7SkFYktcXi6iv4jmGBQO1D3GtFmDfHysUEdMaqCLIOw5aMRy7Cqa+GeTOyEV5
 ob2WH691Yl5oZjQ7dGWMr3DDCFay6N1DYhgZl/EWsoJAMGdhXH4VHF6vUcQwQT+sLjfxIcw/rXv
 J+iPdekda8KhW+LYlnwkbwRoEe0ouL//xmt7D774kVA3OP6+1ETQ0QUfAL9X3TICwEq41bTdr40
 +2JfnqOWmanzno68eZJaRnrnrojtYGxpK5QAf2ec9SELNKJ9qW0O62qHaYP+JKiXqxNM//iYoUA
 /MIWnZdumi5eXxAzOyHCcCwCkAsDktL1MgYD1EGLPIPYL9PTqz45Ad1tN31m1cIzRynIXxyBKAq
 VMbE3J/HmRnMQo82VT2QnUrh5Bv+auNJC2STZu6DvYaFGThQBIfyIru+S7nDOa1TCV8yBSKU1pb
 r/nkegwmlCUd49g==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: iuAqf1I0HP6bkCdufIesLlF89xCLn2AY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NCBTYWx0ZWRfX6B0mGv66uIEL
 bnESkyO/4hXqXmpAqlcr76mTc5JUnRO2ErjFU3VZR8kV05SJ5OoLCpDhFfopSfsJJL0aSyTA0Fg
 MoBE3uew5I6YRXWfV/UcEhZ4V4kQABDR6brYsQOVwWDoUjn8X9lDZAwjPLfU5alH8VMqVUKfswF
 xMzV6qAa5RCP+EqAmNSSJWzzaLmL1NA1qurvmKv1cXxIaxHN5LLcJKT2ScIbMxmN2xmR/556fFt
 AD3WA/Vc35HB5yylqXDuIa2MmbvgiQ4JfcGdHbB/44CgnSO9IX/au4JydpheDWRSoF0YRDcNyRf
 pR8GZaL9xm+ElP0wN58dbjE9lVWwba2s4D9hwKGybtn6LuvocJvVIZQmThya25dtypq95qCfhCm
 6vgtjMzNc3nwHmrdmzwQWB6RS0IAlHm1xcYkvdelT45WV6si3XyWnBnLf6Y9nBLhim4rPoLJDqZ
 xupzTTSukjScEhRotCA==
X-Proofpoint-GUID: iuAqf1I0HP6bkCdufIesLlF89xCLn2AY
X-Authority-Analysis: v=2.4 cv=RbSdyltv c=1 sm=1 tr=0 ts=694bc63c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=n6KyKBFS8jaI6nepwJMA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_025349_702150_D2050817 
X-CRM114-Status: GOOD (  16.57  )
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

According to documentation, the DP PHY on x1e80100 has another clock
called ref.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, when it comes to power management, this clock
needs to be also disabled on suspend. So even though this change breaks
the ABI, it is needed in order to make we disable this clock on runtime
PM, when that is going to be enabled in the driver.

So rework the driver to allow different number of clocks, fix the
dt-bindings schema and add the clock to the DT node as well.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v5:
- Picked-up Bjorn's R-b tags.
- Replaced "parse" with "get" on clocks acquiring failure.
- Link to v4: https://lore.kernel.org/r/20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org

Changes in v4:
- Picked Dmitry's R-b tag for the driver patch
- Added x1e80100 substring to subject of dts patch
- Link to v3 (resend): https://lore.kernel.org/r/20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org

Changes in v3 (resend)
- picked-up Krzysztof's R-b tag for bindings patch
- Link to v3: https://lore.kernel.org/r/20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org

Changes in v3:
- Use dev_err_probe() on clocks parsing failure.
- Explain why the ABI break is necessary.
- Drop the extra 'clk' suffix from the clock name. So ref instead of
  refclk.
- Link to v2: https://lore.kernel.org/r/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org

Changes in v2:
- Fix schema by adding the minItems, as suggested by Krzysztof.
- Use devm_clk_bulk_get_all, as suggested by Konrad.
- Rephrase the commit messages to reflect the flexible number of clocks.
- Link to v1: https://lore.kernel.org/r/20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org

---
Abel Vesa (3):
      dt-bindings: phy: qcom-edp: Add missing clock for X Elite
      phy: qcom: edp: Make the number of clocks flexible
      arm64: dts: qcom: x1e80100: Add missing TCSR ref clock to the DP PHYs

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/hamoa.dtsi                | 12 ++++++----
 drivers/phy/qualcomm/phy-qcom-edp.c                | 16 ++++++-------
 3 files changed, 43 insertions(+), 13 deletions(-)
---
base-commit: 131f3d9446a6075192cdd91f197989d98302faa6
change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7

Best regards,
-- 
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
