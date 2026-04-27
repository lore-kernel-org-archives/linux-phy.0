Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0059FFF885D
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 01:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HxGxtobQ9nCzbljV3Us2/5ZStLKx70eMi0z5PCRPu60=; b=X+DvOjPj+CbrDU
	m24biY5ZgGO6hDDJiTtws9iel7aUTfgbFN6wJxjDbj7GZ3emXDq2V7O0gm7Op4C6+sOL35wh5Orzb
	nVY2VcUixZilgH+8u90kwsRm4yhx+aQhW7b0ZMXZzSwO0RspJ+IDMQUcdviOiROaH7V0SJJwK8DO7
	Z6Ob1Pp1cZFz7yeBSrSUwslUn51Y1Yynp6wQXDfMsyqQda8m/gnKhWH5mxWNrdEk95qA9WI/EPjtA
	g5Yxe4u3XgvJbvrUG+jkatbgZvlaVhzyn/wTeba+Noi5JY/KerXdbjOfncLUagT+NA378Z0rog7nu
	9Jol2FC/JdLEcHPt6Ipg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHAlG-0000000G0r9-2kB7;
	Mon, 27 Apr 2026 01:27:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHAlE-0000000G0qj-1Ekc
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 01:27:45 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63Q7rflx2632227
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 01:27:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=nq0TDOcXpxhAAnClfplnWd2fgSnOAj++nN4
	/kbBkMow=; b=SQqL/5PTl9U8rSW1p8bVYmNTLOJqRbtoFYhcY4Ps7LeSd8Ve+vx
	+UthAf4XQXccmXSoQMO6uGu3JpSaUHDFfWBhSfwT0XR3fJqwrN0cHobD9YNx4dRv
	kMfbpjEhAMmD1XLAYWPYS2zqkCN3qEDdHvZ/yjo7CKlefjAYqCgBFVa3P2qf/cgF
	CNitUuYjphKWD1G+l4itiLXCxpluOpsuYkIz0QvhXwa7m/rxp0s/qZXhW/5wl/1W
	7QmoyP8fyy47OvjWDCdwPHR6rtqul3REnq6XxEftXJcIBpx2602b+O7PrziUhROD
	cYto91+mqfotNZuWBu6hoF3UnypwMxyYz6g==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drnqrkv42-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 01:27:42 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2cc75e79b97so26889397eec.1
        for <linux-phy@lists.infradead.org>; Sun, 26 Apr 2026 18:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777253261; x=1777858061; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nq0TDOcXpxhAAnClfplnWd2fgSnOAj++nN4/kbBkMow=;
        b=XQ+apW7FbzNiTAazOIO2H4J16L4iFOKNATy1thyICLI6ZrbCzH0RiL/Pn06znGMosG
         +sB9sbCCnIZaKqZndYiNQE/PfUkCW8UH86yCkIfOU74V3jyTqv9oIxvIB14cSq0Dtb8k
         NQzg6wAh5ty8lQBmJAmbIccil34CbKe9al7N7etD8EHwW2dOu3O7cFrkwigOV9NZmsJA
         h42JFnhg1pqjrw++BAStRDRmXDl68KXjly6Ha2ddQcIKqwofUOgF5x6R8i1GxcD9lsHP
         S9wh+zwpptAMFf2uPSdbHWBfgHuShNJtnqd/1uzKsK1f72i9yNVMpW80bcLM1rod3mGR
         kQAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777253261; x=1777858061;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nq0TDOcXpxhAAnClfplnWd2fgSnOAj++nN4/kbBkMow=;
        b=jd4EVb9lP1cfxQZ9Sy+E3KcUOcakXkWC4KAQdcA8cuosieWmH3hFkzS87E6yWsy28S
         0YLVyIxhFsSQZgC93WlD/krEf10RTCns6DDMTp6JxiZpoypOntzlpqSn196bEwWFTmcc
         GHoQsLLj/rnjQkl4spfYYDC6w9UqGewh5iw75Tk7HkbJG4QJhnZn5cztaVvXeiqDm3WG
         6jmAomKCU/R/pQDgAQ7k9mDVIMVMC2MLP6pCDt58IP3MXPaXsCvnNKi7DCaCMyKlIuOW
         KrhaAk4piPABjiRkKfcDgNt5mxAUGj+5xAZRnnYu9xZkvtYeSwyuCo7wmlPaR+D4ngL7
         6CcQ==
X-Forwarded-Encrypted: i=1; AFNElJ9I38r2sdKCPmEoQgc4ssPgVpNgPjEjuYx90TS6fo2FEwGcZySPp/mVO5szmMzQiYQSx1yewN8qtBE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKbxJL+GQaOuw1ZOdzLs1m5IhqT9PxNw9y662MQuLtQI2sqzfw
	kUCy5ipIMs5YE4NSVqP3QMH9dC64GC6sfvyUrvJF/EMWNQ0VSZ0Y4MUIW6P8QM60hrMTV07+URf
	QHxFZbN/BPRg2B7g28dqD77XkScjyHT/BQQw900ehTyW/nj3ytguSKqRX/0bv4ddw8uGV
X-Gm-Gg: AeBDievhq1S4cjO4myyBavDaLuUxCKpL63qE8vTB5pB0rs6T4qH3Jzd4Zv8QfOV+jaw
	IYFh9JEyyWF+pamykKMdA4W2vXlZ+AyMb1tNE0v9ysu/6k4b3g27YRWN+FiguZf07XbM8fCXqz+
	flcV0OLaOnq0+NwH1bkBipyautjVTNaCXF6Aezb1Bj1+es/KNbs84YAfKfBuihUkWealmdXIypR
	aNKU+sZ/5yfwvhwLCj+GSzaBn1Vr6Iz0CnxSO7XfHlydFtAT24GFKAaGN3QvISF15OGZIyLOmAq
	CY+Qf912Y5+E33Jv9E9Iwbu+6Woqulv6uqUeAw7HaqmkqVWNEiVj1af7r/rqLRysjqBy/QvNeHT
	sCLCkWF4IjFCRALXYRnibWU0Q9B6yV8nHjS7mCu3fX1Q8SqqQ2Xij/snxtOMjpJiY8nt3dEFJRJ
	xTXUOTjXDLlaghH/BK
X-Received: by 2002:a05:7300:748a:b0:2c4:ec89:bd3 with SMTP id 5a478bee46e88-2e479419855mr24934171eec.24.1777253261459;
        Sun, 26 Apr 2026 18:27:41 -0700 (PDT)
X-Received: by 2002:a05:7300:748a:b0:2c4:ec89:bd3 with SMTP id 5a478bee46e88-2e479419855mr24934154eec.24.1777253260949;
        Sun, 26 Apr 2026 18:27:40 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2e539fa244csm41105411eec.2.2026.04.26.18.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 18:27:40 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document Nord QMP UFS PHY
Date: Mon, 27 Apr 2026 09:27:32 +0800
Message-ID: <20260427012732.231611-1-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDAxMyBTYWx0ZWRfX4fl3GBpHUqK7
 den8ktajSi9GeqmIqlgJsfhhTzgpHsHMttg70DCQ2o3HJbINf07RG2MCIF4qicV9SpymfU7arcD
 OEQwPyR2BvSXzfQ6Y84098N+5z/TNtGVpltMypQjwrf99S/g0259sm2OhUTaaW4UIpDZhtKOqEo
 odo4vFWxnHIqzB9QZKTpJHwEquoiCfVVktGrY4Of4cc7TBsqanx3KK8kRI/By2bq5gCHO4DTivN
 u9bPLXaLJahWLDL8TNieuXUHm5kKQuxLUOA/vngYWSXAMxDBzMuiqHi0ZPokmTOiNgS11Vs5e3j
 VX6J7KRHLnUCbymP09hgPVZTaiV1/tj1x786pkdnYPHTWG2Ce63+mTyMwJ7Pt3KaQ/pTOfDQWLo
 1CWQvB7zegcKDtDGx9D2e/nCmsbbJPhTRvr8BtJxLPzmATplR/m1FQzhAFgYR07muYOOgyJx+By
 IhQoRACk2uf+hqBGA0g==
X-Proofpoint-ORIG-GUID: YHYeFKTjG7Nou27GmTUjO96OdzwuoPC_
X-Proofpoint-GUID: YHYeFKTjG7Nou27GmTUjO96OdzwuoPC_
X-Authority-Analysis: v=2.4 cv=UcthjqSN c=1 sm=1 tr=0 ts=69eebb8e cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=-P_PvXqPkIm6cR4a8nYA:9 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-26_07,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_182744_457431_54B41E6F 
X-CRM114-Status: GOOD (  10.04  )
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

Document QMP UFS PHY on Qualcomm Nord SoC which is compatible with
'qcom,sm8650-qmp-ufs-phy'.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
Changes in v2:
 - Add Nord compatible to existing qcom,sm8650-qmp-ufs-phy item instead
   of duplicating (Thanks Krzysztof!)
 - Link to v1: https://lore.kernel.org/all/20260420074942.1250414-1-shengchao.guo@oss.qualcomm.com/

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 9616c736b6d4..b2c5c9a375a3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -31,6 +31,7 @@ properties:
       - items:
           - enum:
               - qcom,eliza-qmp-ufs-phy
+              - qcom,nord-qmp-ufs-phy
           - const: qcom,sm8650-qmp-ufs-phy
       - items:
           - enum:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
