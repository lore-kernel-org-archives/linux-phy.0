Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 834B0C79F9F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 14:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lF8Su2Sj6rQ4WLzL96tSSmnuZEvFWJEoPQb9tvWp4p4=; b=iNkAWUVmYOR+z+
	9pzFbIpLtqvymgZbt/Ggy2XCb5UB8wSth2eS+bSpJT2IHOXkLFtbkDco3POFf2YiMfhlKAPDwxTI9
	nREmzVR49QueTTXAfoCDnl8fAx4x49kvjJPZaxULcrn7J44+7CMovZggklJjoq9P37t9u5AX3JwwH
	HsDyVv7MRtSfV4+KZHjD5c44PdMl/a2sR0bjaRbVg7PT1tifcp0TSrk6P/Ml7I5psfwe1IzSiad2g
	AkVjEm35KYYOWEbTNsFCMj6AVEHQwDpqaZlvDJWmZebMcaz9MFKkgWapWxlvf5h2yfy93tj8rwR8q
	eonuPwmzhkD1TmcjK+Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclrL-0000000BZ9n-0Mih;
	Mon, 05 Jan 2026 14:47:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclrI-0000000BZ9F-0Cv5
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 14:47:01 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058VV5I3941636
	for <linux-phy@lists.infradead.org>; Mon, 5 Jan 2026 14:46:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=PZ93jr1D4zRH7N9PpSQt+IsQHrrWM2+KK0h
	qm7sbJpE=; b=B0wUgMuSvwjHM4Cg9T+rd5/SchNztsFXn7K0XNDmJo9pCZXxbmQ
	tv6vxpH6Mmq2GswfpfLSacUbWBJsV6jWoFE2+oVei6AkmndVsTd0zqHoz7bTjqXZ
	tqOx1cT58b/ev/NDwHIN+9s0sL5Ns2NBCimNfl6LXFDMPYPSS802I4kaAcLcwjZB
	6Lh8yUWgcIi6EC3jNcZ2w0yQh0oK2yDYCsomAYqlrY4UkE4tVVUQsWjRkkClpu6M
	Fis7pXtIkRwGG2xK/Hio0Y52OYVczlhMY/1p9GaKrxHPzbTg+/xNFzNPISUPbf2W
	bdDbY+GwxZJPYpO3NvNqRxP41tg2ftuEEOg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bfyx0j8mr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 14:46:59 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f1f79d6afso198982085ad.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 06:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767624418; x=1768229218; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PZ93jr1D4zRH7N9PpSQt+IsQHrrWM2+KK0hqm7sbJpE=;
        b=HyWc3CZCvmn0I8aTMPq//UzoYM+98vfD3q/N9+FwfZcT0wV1/1t9Nu4ytLM0139SfA
         wM8EVC/HwZZYEPLxhTDQpqJ5juSxj7pg07ek23j+LOcstSrAIov4O6jBQVjmK7OjfGgN
         dnjobpCCgxKPz/SA7kigRrPhsWWn0GWodXUh9Ea2Zi/z8zjc9KnQvxP3xHfThFZK5scu
         8Koj/JY56kZUmUPYK1CoCNVYtZ/gXdBWRNqqsdzig0WA3ITRNn7PxzhzRB4MgpeQjkM4
         FNn9bxIcoho60OgQoZ9B3afXRAs5udlCXOxYK+vAD/RTCMGlkpjw1dWqvXx+AzeV3OPb
         ZL/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767624418; x=1768229218;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PZ93jr1D4zRH7N9PpSQt+IsQHrrWM2+KK0hqm7sbJpE=;
        b=Eg3hNiGxqdlnQWwgX61xrcPRpG4/yWtChXNIZv5FjY81CKAPdUWEtSJXbB16iVvOyG
         dT13Y44L+7r0t9xnq/cDMvO3/HlDslvWeTiljmU4kDsW1k1ktUAawKfYIfKPmIai7JqZ
         xT6DobdrohYxgU2Kjz8AdR51kuE9N+njn9SPUzLKpbBAeKh17TJTcJE5tDVbLyh6NxFn
         6Tncl5Hv/qm+ktfM0lG9IIenQ9ZlRyvp4eQllyuqLccFzSCsp4x01HnNPYP4e2QvAJsT
         8M+SQbqZejXxVEXqLABXkP0OpOsP4/KfE1tsHww+A0JmYQch5aFZMARmwsSk7EG6tn/w
         Da2w==
X-Forwarded-Encrypted: i=1; AJvYcCUbrJrVWeGRzMxj7gbg7jcBBdQRZrqFbxZRzvrJjhFDAT3+lWngbUYybLN5fsbV741OeVCRDjep62c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6fK23JEdJWvfMjHmlclw0eBPgnQ29v91gChlofmI0L8al2P90
	w/S6CcjS+MJ5PjYtCJ6gAEt3Bx+jSVVcwo7PZwskK8DY5nFTxIG4R/bOIotVi0+610n8pxhUrbp
	ZfbWiTIl/F4KvryDW7pfS+DGRbwvhFlxqi0sZxnLOy35HyP20A8IYuOtnbkkgqBEAmNCX
X-Gm-Gg: AY/fxX4GAUHB1L++L+p2pXdj9Es10qtQoX+Gf0fRZm+9gMDxY25uQRb3b2R5BJY68/F
	Dt6kFvOzTOKkoIAI5VId6sniJrV/9UTldgj6dpVstlzPub9TFA4OzGZLVW4xjuJLajxyi/ZjsaW
	KSqGmoFwJ9EW8O5GyGh6UGM4qfA8TQTH4KhuFBYFrUC6KXa3hfqEkigpEYYXfrL8Q4QmNkwuyrm
	t7GHc/yLvn2G37LmgknJh5OelvqqKnYKgMAX5Ww+L4Z6lWcM+J18mZFve5TRNArH01k6+8F2UNh
	eEaJoUPWvldgPMqbO7p+uf41V2eVZn45PU+57eMIdJ1iz7jiFU5bcUnPavA/vjUFEgtKL223KLj
	BgWLErP8cqahPiNcCYXWQc33X4thzktynlc9TbHFcaF2BPkUGIDi1
X-Received: by 2002:a17:90b:580e:b0:34e:5516:6655 with SMTP id 98e67ed59e1d1-34e92143ca1mr39102501a91.9.1767624418160;
        Mon, 05 Jan 2026 06:46:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEtgxrBJy+KlEiCPbQnnuwqMX4vv2QGV7RNNjtLOl6mRIRz3nWiVPztFg2wB2/6dl+kJEARIw==
X-Received: by 2002:a17:90b:580e:b0:34e:5516:6655 with SMTP id 98e67ed59e1d1-34e92143ca1mr39102485a91.9.1767624417667;
        Mon, 05 Jan 2026 06:46:57 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f476ec311sm6634868a91.4.2026.01.05.06.46.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 06:46:57 -0800 (PST)
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
Subject: [PATCH V3 0/4] Add UFS support for x1e80100 SoC
Date: Mon,  5 Jan 2026 20:16:39 +0530
Message-Id: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=CZYFJbrl c=1 sm=1 tr=0 ts=695bcee3 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=g41jKqSBfOdEa1tnm9UA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEyOSBTYWx0ZWRfX1dUcqGPGVYj/
 1m04t8LXxli886iisRT+itX93dbS9Rp8eY4tjpo8OSvenCGBi2nJ+YT+vFhXrJsmn48fyD7rGP1
 UMZCYseXudVcMgKVsMNIluizKHWbK1LrniU6hHS5xa/kS31/CakBQaWjoGlXQgRFUX7zIeij7sq
 PP12nkWRDWs7AoyceYLbOvReh4YqBS7JfjQVCVPJVK/kWPWRz25A8XwoMjvPbqMqncGU24h/IAA
 7A2EvEBvj5v6zA7xZKK7mUmddSkdS8YnDdrBJUbxzDvkyYaBJcMIaNJnG/JZOtcaUzxD3oOVZxA
 8A4tChfCSVV3jxu60l495cHRW2/tWI+ZgY0niUVW6/unHCb+WTQNrrVPV4lbfQwxsJ9ayL+s1MW
 ADG6AiUrnq/XL+/DkwZa0r/N/t+46qqvI+d1gW2/l3vct7DwDaaVWM7wu1fP7jvlsBeE6rxTve0
 y9NHT10DOhiYz5/f/VA==
X-Proofpoint-GUID: avoOEUpsttaNiwRe4XY9wia5d1MLZAUw
X-Proofpoint-ORIG-GUID: avoOEUpsttaNiwRe4XY9wia5d1MLZAUw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_064700_201558_19E79846 
X-CRM114-Status: GOOD (  11.98  )
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

Changes in V3:
- Update all dt-bindings commit messages with concise and informative
  statements [Krzysztof]
- keep the QMP UFS PHY order by last compatible in numerical ascending
  order [Krzysztof]
- Remove qcom,x1e80100-ufshc from select: enum: list of
  qcom,sc7180-ufshc.yaml file [Krzysztof]
- Update subject prefix for all dt-bindings [Krzysztof]
- Add RB-by for SoC dtsi [Konrad, Abel, Taniya]
- Add RB-by for board dts [Konrad]
- Link to V2:
  https://lore.kernel.org/all/20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com

---
Pradeep P V K (4):
  dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY
    compatible
  dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
  arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
  arm64: dts: qcom: hamoa-iot-evk: Enable UFS

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   4 +
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       |  37 +++---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
 arch/arm64/boot/dts/qcom/hamoa.dtsi           | 123 +++++++++++++++++-
 4 files changed, 164 insertions(+), 18 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
