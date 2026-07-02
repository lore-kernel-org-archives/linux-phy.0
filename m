Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F709C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 07:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aETO/VKh5D2nfu+morojDMefDbRgR9jrE+WsMwgbpXI=; b=LHJIDJFuOKG6hE
	xvuN0HS+sKQFZ8QEtiA/KhYbC80ze8Y4MTUXBvCkrt7CHAzIcu2bik/eYvpvWymHjwq5jLeBK7FbF
	wL6ZmOzLXzbsWQBWCXFdOyLue0ECH1RM77ewEy+9xAUdFiNJCwNUD9dJlB6mO/b4mn3/LJOWDHEQC
	dPIZgF/7N1RGwU2LrSwtNkDUiPguu7UTmaUUGgW6mS5TY84PLJm2LctarRrP6/QtJ0moVEhyDOz1R
	djF7zUP3LBsjrBSXVjh/o9wHWlcCxva1QBmWatLYmCNf7j4A+2gPD0/io+TMzqvl/6tbhr6SKdhbi
	SkK0gPlvaEK1ruWB6zOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBvy-00000003kOi-3Z8k;
	Thu, 02 Jul 2026 07:34:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBvw-00000003kOJ-3uvB
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 07:34:06 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6621KOYe3050714
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 07:34:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=JEalJ388UV7aZKSYSZMD52o4Z6quoMTRP0H
	R3KK1hG0=; b=D2Dqq7GObUQmDZrEuyNcw+sMOoDXzbQCYrE9zdrt1dq0GecKXnj
	YSbZYrfD+zPPHqxOPJHxF4qwVPvA+lXloYjhI3LqnSMTI5pAZmsysYHJNbzEjlmY
	2NsbKSsfPygvPijz00X9DDQAt14QUu8p7bJZpSAMR99HEzciFdh6gtehS1ftHr9Y
	/YnNUwpSs4MKxefx9tkpkwSx7RZrmEy2SyGJCwzLDe6vG/2Nh3YZ4vdFuvqbhIPr
	qYu9lLzpca2ZrubueJBhFWEHBM54cOKDWAqrxwPnZKRTDejstq415gJyQA4ME8cD
	40zQ5U9jVyPFZDJ9mATWf3ekDWEc7Cc/WlA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f56gptwax-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 07:34:04 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-37fbdbc4d03so531199a91.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 00:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782977644; x=1783582444; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JEalJ388UV7aZKSYSZMD52o4Z6quoMTRP0HR3KK1hG0=;
        b=QXfVMacsAGdXFbUwNs5SKXjZcl1qRGpVd48v9MW4NjJru/jYg3fWt9/Ty1tyegMhFS
         Kakq/6rMPVhhBKGaHq0GlJejqvSF/t57B3iY0u0Cr5oUvaDYlwvp5r7M/03q4Oean/4S
         eaXy4Bzj1yTf23Uf8HGO98vRU6QMbhhVye8NsHU/KPyk60DQC2rH/DwnFwhfzfKkJeN/
         yBP3Fmb16rgxPVlukGrsCswULZpqtGQNpOwHxium5ZhAg6+enrjQik+DwPmnMYw3vkCD
         b6z/CdtK4FAWQDCi4u8UBNXn2AN5Y8jb0s3zAX00m7e2OmJpmHrtggpzmPk6jbF+H+Pk
         sEEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782977644; x=1783582444;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JEalJ388UV7aZKSYSZMD52o4Z6quoMTRP0HR3KK1hG0=;
        b=WOgwqycYbZbj6Ys+mJQfHncKH91qBYVrwkAeFsbFK/iZKa2qqwk5UIaf2cIpxEH5xX
         95rKpq/14IlcELe5Pp8C685dyeOz67kLjMGD37CtEJjepWCJZFVNOLUe11EauFwrf7pl
         R38U6GHW0CrEFeK9CyjO1wXIC7+ne3c5p4vhN/nHhNsv7LzDeKZwlNZQ06HbipcnxNLT
         7bUXQDgvErsyeQ935ZnrFX/mF9Y/mCt190G/OQGi2dZzKFjsif8DzTugKm6vRXzNeqg9
         J1xv/acyyG17Bafah3JQV5XVf4JoKkpo5pOAm4n3lAj/kWypgXYkp8U5UO6QQAAAHyM4
         XYtA==
X-Forwarded-Encrypted: i=1; AHgh+RqAHfL0POjRqwCCHT71Ogiuj/RoVHQqUwwLA4U8Bj4pbT6oak50rL4OZ1C29b/7txTjGlFFdWeJOvE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRqC368oCgwAx9lUdIRKPD6kucSLunQpAwe2qBn/NrCX63J96f
	EI3By8vGI5LV9BbL90b/Q6pq/mrrXUyubiXTuTH+nvEWRlKgzM4BNi/bOiIpk2Cj2DbREQL8mFY
	oVO/SE+PDy+9N4paxqxhiX+C7QA5aFSXTXLNFD6oUcj7vPUpK46ATmdIOuJ0Rx8wEuZSB
X-Gm-Gg: AfdE7cn96p4PwGq2QGYhAOicDsjBE/d4BuBDej5+I+Cams9wtjhYqrpD65c4rRb6I4J
	gJP87s2lJvAXYCANLQXhzQgmmiiYn5ESB44H3V2QlwkeCfhdVAZ5i3gsMCpRPa4JKGG9gUUzcdO
	BOBdv/mZPp+d4DcdA2W/RDHACEmB7OdESMGEltaHk3pUf3tVPyQYCbfy2yHxSXIX4H8LFaK3yjF
	1oxk3IW4J15NMiQdsHp3NOBTbfGRLp9BHCaCixCd2ujPfSlMOD/LIFPtasZ/3ieWmbp3xpkUluU
	6gA+kKItWEhXvVATOTrE7zXMm8j3j59SXDD8bqXZKmBPZkJ+5fGok0/D7c/IxAIR6ggR67cGn3y
	MaVRM5x4UEn+5Br1SWI16U+p+teDa/T2qTWVIqNERnPWgpg==
X-Received: by 2002:a17:90b:17c2:b0:37f:9e21:91d6 with SMTP id 98e67ed59e1d1-380aa1d5609mr4006121a91.13.1782977643748;
        Thu, 02 Jul 2026 00:34:03 -0700 (PDT)
X-Received: by 2002:a17:90b:17c2:b0:37f:9e21:91d6 with SMTP id 98e67ed59e1d1-380aa1d5609mr4006090a91.13.1782977643055;
        Thu, 02 Jul 2026 00:34:03 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-380e163211asm587380a91.3.2026.07.02.00.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 00:34:02 -0700 (PDT)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V3 0/2] arm64: dts: qcom: Shikra SD Card support
Date: Thu,  2 Jul 2026 13:03:52 +0530
Message-Id: <20260702073354.3641966-1-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDA3NSBTYWx0ZWRfX5QEy0jckIqVu
 zZqNAoehw8dOH5rjRoAoYiRUA8zxc/ULvYIni3ur86mCZh3WlWleP/eAZ4qZM82D5Jn9rJ0NmQs
 d4ZqEvLnA+h4eczsN9uvbElFfSLDVhc=
X-Proofpoint-GUID: Upls0wMTfXI7waq9R96hhxjMT-yn9pXo
X-Proofpoint-ORIG-GUID: Upls0wMTfXI7waq9R96hhxjMT-yn9pXo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDA3NSBTYWx0ZWRfXyO7+4LiDzRaX
 ngu2IV5Ai8FIrMW/bMgmKQCWilv4rGAjtCl5O78f0I1yZydBcOYDLG4gO0zfNwutyOM4pfWXOXu
 s8ZdlKjfhunrMJgbmlH/V1KEfIimEs+3aTXjkgjKmZFsaO2Uv/ZtJ53oQbnvKHrJHO3mRT/k4dw
 CFPBRuYnCxoapH9eRn6aK7GTO4pPD5fHsEN7Azs08EO8Y1xEiXJo4jn1Ikomkx90HtAzoXs0Tsx
 hM0SQRZXAGpdj/z+SYLWBJtP/fF1C//o51Eg4HtxA0417GaewQ45A/Wmud84T6QmwDsxYah5lju
 ZlOt3GjW5pClBgEWaPu4AogzxEO/xaaNgEzIKfwaLcHPpOYI0yE6Akt71s1IBsaQjVtEb3rbTvs
 YGXZNYSotllj/vmHwCeMZxZEeyDEpFW8a1PxoGX76VOIkP4KyAMiKv8vh7bRK7F5t5s3LDitxui
 O6WnPP/PDqhoui4A+Vw==
X-Authority-Analysis: v=2.4 cv=K9oS2SWI c=1 sm=1 tr=0 ts=6a46146c cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=1w3StAHzAm3vCDDRDnYA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_003404_978945_360C88ED 
X-CRM114-Status: GOOD (  13.39  )
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

This is v3 of the Shikra SD Card support series.

This series adds SD card support for the Shikra platform.

The first patch adds the SDHC2 controller node and the necessary pinctrl
configurations to the base Shikra SoC dtsi. The second patch enables 
this support on the Shikra EVK (CQS, CQM, and IQS variants) by defining
the regulator supplies and the card detection GPIO.

Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>

Changes in v3:
- Padded the address part of the reg property in the sdhc_2 node to
  8 hex digits with leading zeroes for consistency with other nodes
  in the file
- Moved the common sdhc_2 properties to shikra-evk DT file
- Link to v2: https://lore.kernel.org/all/20260630165700.1886608-1-monish.chunara@oss.qualcomm.com

Changes in v2:
- Rectify the alignment for clocks and interconnect properties for SD
  card
- Link to v1: https://lore.kernel.org/all/20260604122045.494712-1-monish.chunara@oss.qualcomm.com

Testing:
- Validated on Shikra EVK variants.  

This series depends on:
- https://lore.kernel.org/all/20260612-shikra-dt-v6-2-6b6cb58db477@oss.qualcomm.com

Monish Chunara (2):
  arm64: dts: qcom: Add SD Card support for Shikra SoC
  arm64: dts: qcom: Enable SD card for Shikra EVK

 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts |  9 ++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts |  9 ++
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi    | 11 +++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts |  9 ++
 arch/arm64/boot/dts/qcom/shikra.dtsi        | 97 +++++++++++++++++++++
 5 files changed, 135 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
