Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CDABEE6427
	for <linux-phy@archiver.kernel.org>; Wed, 31 Dec 2025 10:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5fVwCwc2+p7PcxNQiHIhEIKcv8JuHT+UcPpGEfpAkzM=; b=AkCLAc5wgKFnKv
	9cPvUnBQOAlHOGGJcgCLd403W0AsXxPbEbm4GF3AD2cxVv/VO3QNyU8Niu78d693+fsIVX2eyukKj
	sOXvOhM4jKcpGPeLziNbv1oDnqt5eiLNhHpN7+f68KHMJSSAFiXHGuNUX+iw5BXTxZRKsKYosEDwc
	2I9e0VkGReHivaU2w3rn8p1oMQSuH3FHDHGryRV2dyIEHQAhAQDH/2fLP/iqihk2dEuOieJJ6rzQR
	+i5oWRiTZlGfyDG2P7msDZpi37F7SjpPttqRdfJudfiw5xwXIht56Bi4rWYpKy+vdgCzft32rwuHo
	8UeuSvEEXsAPP/HKwwMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatJZ-00000005seU-3jqD;
	Wed, 31 Dec 2025 10:20:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatJX-00000005se9-2Unk
	for linux-phy@lists.infradead.org;
	Wed, 31 Dec 2025 10:20:25 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV4q0Y01432131
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 10:20:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=EBm+C9txCrc0JpQP/cSYDwUBJ05oXh+KTPs
	Ja3/CzN0=; b=gOhFVLaV01MCt51zqc1hSSQRV2Eya9gg3BUNQj3TDg5/j7JwRNE
	okza17le6Acn1QJfJXlp/1Kolz8+HK6qYCGMVL6TnGIPudC+L1rRAFONKlKbWP4g
	p3PRyxfz6Tvv9RyodjayzeGxFzkPOhR5XF93cnleq0b0/ioPlJpJeyban17L1eb2
	dz4iBwI5ZiZPsIT+jaO/xww5FAG+8G1ywN9Mo2n9VckP1vV97VUl3nA/Xgvm6LLj
	gvKnsEOG+pjeFXNq4sLf3imkCdowbQ8GCFEQmoL3UJoXZaZOskvJHyXbIaIbHb+7
	WzuuYA5OXg2ClDYUyCY836z29zlDl9EOlcQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcw5e0j6s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 10:20:22 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c904a1168so23517330a91.1
        for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 02:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176422; x=1767781222; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EBm+C9txCrc0JpQP/cSYDwUBJ05oXh+KTPsJa3/CzN0=;
        b=LD7XbkCacnoOXG+Q6Ak2jlppFCYZAoZX6PJwF+NshvHJjMc+7+zhIi5DzAID3o0Rwi
         HL09n3RTTHyPvrj9ZY45kyIt4FFSBGpE7mAGvnSjlMd9sK9xu0iRYJF+4mPomkL/C5jT
         3Fs9JY8yzY7qWCAJPJ8EBTHrw5U2lXFi2q+qzccxwgWpfyEXQobdhKZqB551fZ5J9iEa
         QNBkYkkra7D87LZHJwZZDU3Xx27Yyv3x8Rt4XrrLUinRrO1JmcRW63Cyw7J61JgOH18t
         T0vBnieof79/5TcW8GV0gbeSqyE1yOZoac4YJK4g4KRi8EEfq986t2654hIG5a87f0Sa
         e73g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176422; x=1767781222;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EBm+C9txCrc0JpQP/cSYDwUBJ05oXh+KTPsJa3/CzN0=;
        b=XgPOxMdXdElsGTPD1xCPfHlGX3ZuMJtQDn7kJ7hPDEeimShHrEEVIntWWAtpJwB1nW
         n5OzuL6sGW5PnimKTpprRF6fRsU3fxPBt9cGtIgQimQw12GsXfgYPlRCiwWEPxhwLLju
         SNxfbenruUV/Tl6cmv0pQmi1ZmRdRy0rftu09ezkMPV2e0Kf9YaYhdbf/RI/rHGxvs2x
         D10UN3L59oLbupyVX4MuH2rPq+ZCGbVjcQsP1ExLYMJiLS3Dvn8NndQs5rY0m51+Nf1k
         0PPnY3Mvzm1Ff6D0ytRaCJKTcF/dDd/Pk9OL3WQkAmv5zTKQy82XyP5cQTt7uWI7pq3x
         zDKA==
X-Forwarded-Encrypted: i=1; AJvYcCX95aR9BdYyoS9cD6E5iAS/QUkvGWl0J773CAJJFUmZ1LGFRWcsBnOxpXkiHtu1x1ZlefUELiVA5Xg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4RZZcUEPHoCS3hgMuTcueQutYRMzsi+ibLbxA1DuEa2wKgi5n
	nN1w5NlcHYwnVHAjYqm8eTyA3lGfj+wwb63hSYlq0Fbb4a6Z3oZtqnqSBcUOwEzAWs7hne6E7D7
	3rz9z50h9URqHiuX5DZQ9tcf4LTUY5rf1XvgSxtTkBqUXshgeqkTlsdvvDgg/wi/eUkD6
X-Gm-Gg: AY/fxX4mZWbwksW+lUVkuDO09pggLVUQ9LJc3lhZ8glOh5xIczcRSLINb6sNL9Qc8Lz
	5ceM77XD21lCeAv5a9iaTMg/icZei8skW/X2wZmJfHQOfa+i5ZnSS5hEpD2Cm2ETiYvPLJf4uuU
	Mut9m6YEKyNVPTwpXVvuHKZbI9efbR6fVcvGOvsxea+Fz4bq8qptsE6djG9Ac0A8JZIF0J5OnUS
	fDHIrYxnaRmOMexQp7Hj3MKcCKdxuvKd9cwcvaH38sJK1PynZcWQcaEYqfj3db+8qlReTqEyxuU
	9ZlP7BwHLl3wdKZtM2BLcAXey6lYxTgNq9U9eGgER4wQYnD+78BADMNMbPW3WViaVsBFsSj3lvH
	/RrU7pQQiIkrc1cEufCf8IgBsitI/hVkRKGBQuq4Qi1nHte5b4GcD
X-Received: by 2002:a17:90b:5843:b0:32e:528c:60ee with SMTP id 98e67ed59e1d1-34e921c3dc8mr30732595a91.24.1767176422162;
        Wed, 31 Dec 2025 02:20:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHBBK2KabkmuNb8Z7SZE+KAlG1z4dXeua00bYwsikaNo04m/NZt3iH73LymmMzPuFxfkb4ELg==
X-Received: by 2002:a17:90b:5843:b0:32e:528c:60ee with SMTP id 98e67ed59e1d1-34e921c3dc8mr30732574a91.24.1767176421701;
        Wed, 31 Dec 2025 02:20:21 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9223ae29sm32163920a91.16.2025.12.31.02.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:20:21 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V2 0/4] Add UFS support for x1e80100 SoC
Date: Wed, 31 Dec 2025 15:49:47 +0530
Message-Id: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfXzTB6Ebc6ZFML
 jQlf17B59OkYRjwBLT7SHaYECpp8ZnF4iGgut0vTFHIqNeJ54XoPjVSqA3CdoucqsdzhwVPHEi/
 17ejw6zcot5FmIWHpYhiVf9xtgakfAweSEHCQjO8otwvMSwMSQ1y6oQApngttWczYI17VdxU420
 ck50HQtL8xAi4JJbY3E3FvkaI59uquAunFP+BBTJnck4G6NySedRW1kFk+bIbC8FMPN0/3Cj+Sm
 /FAAwc9D/oBKKdrolMuZlNrk+Py3F0seeQKsz1Mim3kheQzdcyZybsP4slsVgsFii+d2hcdupJ2
 WPLrmDayOeOLl06sLhxxbsbw3MvJNVJkGgT0fIag1IuTHbVTiw0tIhKAsw+2YL3b+v/RiPbwmEw
 Q+UCQ7Pd1xKQsNELghgKSje93CTXnTJ3ZPvOhj28tnLErJyrAf7oIXM6oWoSPDmOwzgWeg2PG34
 HxulfCh/xBBkRVMiKGA==
X-Proofpoint-GUID: OyxGZNnShonKd8WoZptD8PU44wIqh4Oa
X-Proofpoint-ORIG-GUID: OyxGZNnShonKd8WoZptD8PU44wIqh4Oa
X-Authority-Analysis: v=2.4 cv=Mdxhep/f c=1 sm=1 tr=0 ts=6954f8e6 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=IsWZ5-T0EzXF7LRbJecA:9
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_022023_642060_A77404B3 
X-CRM114-Status: GOOD (  10.64  )
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

Add UFSPHY, UFSHC compatible binding names and UFS devicetree
enablement changes for Qualcomm x1e80100 SoC.

Changes in V2:
- Update all dt-bindings commit messages to explain fallback
  to SM8550 [Krzysztof]
- Pad register addresses to 8-digit hex format [Konrad]
- Place one compatible string per line [Konrad]
- Replace chip codenames with numeric identifiers throughout [Konrad]
- Fix dt_binding_check error in UFSHC dt-bindings [Rob]

- This series is rebased on GCC bindings and driver changes:
  https://lore.kernel.org/lkml/20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com/

- This series address issues and gaps noticed on:
  https://lore.kernel.org/linux-devicetree/20250814005904.39173-2-harrison.vanderbyl@gmail.com/
  https://lore.kernel.org/linux-devicetree/p3mhtj2rp6y2ezuwpd2gu7dwx5cbckfu4s4pazcudi4j2wogtr@4yecb2bkeyms/   

- Link to V1:
  https://lore.kernel.org/linux-phy/20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com/

---
Pradeep P V K (4):
  dt-bindings: phy: Add QMP UFS PHY compatible for x1e80100
  scsi: ufs: qcom: dt-bindings: Document UFSHC compatible for x1e80100
  arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
  arm64: dts: qcom: hamoa-iot-evk: Enable UFS

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   4 +
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       |  38 +++---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
 arch/arm64/boot/dts/qcom/hamoa.dtsi           | 123 +++++++++++++++++-
 4 files changed, 165 insertions(+), 18 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
