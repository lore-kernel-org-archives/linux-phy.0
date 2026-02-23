Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E785AE98E06
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 08:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OMUEyzxBY7mGxn1DxV3PcT0fGGYDFDLtRT+PxR0wyns=; b=zryNjJbAQMQhe3
	C/1S132AcTQ/cE2X1H6SJAQUCSAmQUhpq37rIzTcqHoiboZaP6Cd7PxfU1iFXwJx6reyM8U32/grb
	YXLLQBrYHuyWTTauKuIgI8rGsPFCPAFf0k3qM5LwJS+v0eE7WaP3K8d0XZm1zHLZxSyXA/O8F8O8W
	PJ6c73P2NFM9oc/LZqytqgxF9Rv+MCbj/ZdbvYGrsJUvo6AkB68RZLO7sg5yyBECf53rMZNNNqstf
	wqtuVIiWmOG5Mc+eJy1AwolxvLvZhZKc2SfHI5cR6TxAXNSfl63E3Nka1qfSGzkSraWke9+gUwxap
	xoAQ0Dbm3C+ns/3YZI7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRAZ-0000000HPvl-428D;
	Mon, 23 Feb 2026 08:19:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRAW-0000000HPuq-3583
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 08:19:54 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N6WS5s643687
	for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 08:19:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=yKpp9TizSKefpW0LuzTBIy
	Zh8T6KHVbQcnalx4nANJU=; b=huykVop/s+9hqRzkHh71CZhQZZWYP9scLqJ/Va
	4HNv0XuDTlFdUyuclH0yB+l9jf+u+mSZ1pEjUVG0M+9UH5ZRRWIH07WiKqJ0v4PE
	3JMmKEdcmtrgzWkY0W52xXXx20J9hLZi8xqQ7oI4ek/vGeRJsomfoWzuMZFU2B8I
	zqhSt05h4+0+7L/oTCoxTXkAaMMXpfGAsB1amTvZ5PLkhHjfqyjnT9EcPXx66gtV
	c1xmnzHr0mnIF5XsZOopBxNhi1VplUlQfvccFXQpQCd/5s+eno9YnPugoe9Qb0Yp
	uCAkvNHsUL/6BxSrjtnBy0hZcgPHQhuPElgTYBBiCmzUw+ew==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5vukuv4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 08:19:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3a129cd2so5480534885a.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 00:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771834790; x=1772439590; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yKpp9TizSKefpW0LuzTBIyZh8T6KHVbQcnalx4nANJU=;
        b=Xfx+Tepr6LadzOGrtm/PvJRO1pm1vKi4RmA1e6AWAniO5IX0EGtIF6w1VRjF8Jc7hf
         5lPQhiXWyGZb+ySsTS3QTTl6GPDu9h3elLDvUsq/kp+V5plVk3y3wV4zZWeIqdKGeusz
         25ziwAP9Y4My2RiW4LnoZVfxxkfVGmo2qcaPh7les0OQMsYJUOYyesAh8S9lM04YPydI
         3w6NMEsVtCbYrjm+ea862EtNXzAtaL3M6d3CyRwZGXLP3aFzOe6vUn9SDnr3XxhIpgVc
         jxzBkkvqroxm24h7D4rgWLXwmbk7BCaxmWLpczo7HYev4F05ZbxAqG9LGU03pSXpdsid
         5ZZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771834790; x=1772439590;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yKpp9TizSKefpW0LuzTBIyZh8T6KHVbQcnalx4nANJU=;
        b=H4u+PIuyB6ocVshab2Xg4dDYHefFBj+QIPQQlTGd49BWXvzjD87N4s8+EnVQOxhD5S
         LBdZi5tzOPevY4ZMl7PgXW9QJ7mQeIRCaDLCfAh5Wd08Ik6wXmRdoxKkNHWr/TiohgSb
         tfFHOr28WYSzw8kXXnPhequc7ejIjDnLFxpzG61saO3BS97nrlf+kUdpNtgsAoP4Spnv
         hnvBlwQ4AiLFe/GgZBwAbE25hHneHdKalnsz/gdKsp0GeoeoGdLDwyVCunW5UXmoKn7H
         UFRbl7JmHk2zY9Nhub5nSjdNri2WnmQ6pJz5FlQCpWAS1JH9iTrZkee3NloDSlq22XQ8
         YD5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXA0cQnsH8bylJypA8i1fn26aXQytdvmHhnBqooqopvZkK7Wri/8Zyf88wuG0YQyG4YrlqsblGOLDk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4dDy6M08bi2mU8FLQevrt0Ksjuk5XuFsC32dwgDZO4THfEPGC
	pTZT2kVG4fy2wNlwmHsVFvnKF2wqrZNZjEKQ1T3j3PtDQqbXFSYgkoR24duw9gxaGi0VkotwvKY
	9NGv1hVzzBpXCDBMAQoPw4YcSIEIbop527Z15/lft6sBcUW1I1lVuNi9I1XK17t7bviRe
X-Gm-Gg: AZuq6aJyhTwF2xyNvk2HeKcNRBEstbHTwWoD7b1pVzPQc+NJ95bSejb4g0O8rcrSz9b
	HjGboHmMNbw8DjYgo2lLh7PBR6Fnj4RDubzQrsjljvexTAuVdF/ghIfwqTVDS3Rm0/BBLCGuuZj
	nDP6eWEPUNt0DEIBupxSfufo5IHFSx61RPuY5L/xfApHOrPLBatOLD7dclT0P4codMG1nSE9vEB
	SgWWlqCOSyklE8NTxR1+2ElT9v0n3oBb5m04xlcVGwcQV9UgMh3lRESYnmTGBBj8InzMQPNV51q
	9lXctQ/aLaawwGk3blQ7HxCOPyM/t1d9TTHdcGwBuvP+pohpBNM6BlcCYVBFspN0koJi93zWLMq
	0tw2OAg8s7NdKeCmfo2V64VvcLgltgg==
X-Received: by 2002:ae9:ea0a:0:b0:8cb:83d8:31bd with SMTP id af79cd13be357-8cb83d836c2mr958589885a.40.1771834789963;
        Mon, 23 Feb 2026 00:19:49 -0800 (PST)
X-Received: by 2002:ae9:ea0a:0:b0:8cb:83d8:31bd with SMTP id af79cd13be357-8cb83d836c2mr958587485a.40.1771834789407;
        Mon, 23 Feb 2026 00:19:49 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a430927dsm104292105e9.31.2026.02.23.00.19.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 00:19:48 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 10:19:38 +0200
Subject: [PATCH v3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document
 the Eliza QMP UFS PHY
MIME-Version: 1.0
Message-Id: <20260223-eliza-bindings-phy-ufs-v3-1-2b0c0f00bcb6@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAJkNnGkC/4WNSw6CQBBEr2Jm7ZD5MCKuvIdxMZ9W2iggDUQk3
 N0BNy40ppNOKql6b2QEDQKx3WpkDfRIWJUx6PWK+cKWZ+AYYmZKqI1QMudwxaflDsuA5Zl4XQy
 8OxHXITde6Syz4Fgc1w2c8LGAD8d3ps5dwLczbW4USG3VDIu5l3Pvr6SXPN5GG8ic0SLN9xVRc
 u/s1Ve3WxIfm129+qAp8ZOmIi3NpXDBe7M19gttmqYX2lUceCMBAAA=
X-Change-ID: 20260219-eliza-bindings-phy-ufs-3d95c2377aeb
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2401;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=bpbyhfL60EpXD48p9ObjY1m5pfPG/9+CDUIPknFM4DA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnA2e/+oMNLUBUdmkG/VcH0rfTLyAF/IjFnhcP
 BXkm+ucfkWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZwNngAKCRAbX0TJAJUV
 VpO+EAC9Qdm4YCGW1t/jLFr6oiuU4gQsv5NtZll7LdDtK/2C0IK6fwVTJC1HWNS+L2cPRhZpI7g
 pyrlOIrzXgkQ3F86H5IZjj549V/5t6xUrOtqaTVRWhCkTRwjEe5KK17DTu4mTRs3bUKQUVU7HQV
 r5IF1wka/whiCItCpGYkb16Rx6xQUhp83A2FenUzXB7qrmGF2Vf+DG0AjyrlMGzsaGwU3U4lnA0
 N0WlqSMxcl1j2BRskZbhCOYw5OwkMbyIatRQTGKwa4fzy8Z/LyfGrR5Xyxf1ZRZ//t84dg2miKs
 122qH2/zZj6yoP7zgl9NibwTUpnFl+5WD2cRdUwBhKN5kwxDDxwobtSshR+m9wMiGO99HtUWlt3
 RtTvsVdL5myubrUxbUR5rTxuF3ednkrpkjGvcCzyogl3pS0xxIYiK+IvM/c8agLLciKwWud/Bm4
 gUxXVQHW2uqn9ewquDbZCVOpC3XfegvQqYM2BzTs0mitcnrdXekhnRHavQ3yqSovp0ONgncdDbm
 AskeW2XstbCdjPdZal1K9K14YQKRFjtSbwW1PpAN1rN6b9RKpmNAJDu2xMl9TqAJShExPryUokr
 t5IaU8so5PACJZsUOufF1WjhbQVTqxo7rSnb3NpOxUNR8y7P2+4pMlYW2yPvg57mj/GtAPNWuu/
 F+3qA2gWO5HAyrw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=AL4GpdX7 c=1 sm=1 tr=0 ts=699c0da6 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=Sq0TCQXOQfRWv73L7AsA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-GUID: v8mLYiMGCkNb_nbn5YbEl2BC70f8Ycdd
X-Proofpoint-ORIG-GUID: v8mLYiMGCkNb_nbn5YbEl2BC70f8Ycdd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA3MyBTYWx0ZWRfX5vPN5bxTAFdU
 iHFYMEN/Kik7GDVLIlTasYBMffIayNCPHI4uuHgMcx0oaMrL+kw72YEVNwnnnrCWSXYNo2UBs7M
 TraICVsuzPF0v/6xNfy1/QAE9zYKFA9jCFhfL2qF/ByrlyeTDT7pOKMX5C9OPa3rgaB/vpnu8OT
 ktZxta3+rGa5K8d/9Ey+Q2vXvnycXWZmFFpHHFD5E4eobDmbmdjdlOQPrv7LgrkqiiC8SHtknKI
 xPBgfq340IJ2iThiMfIKuAUWMvnPpe21SC9avE+75kx3cpdXDxeowOrLk0y9nRWkfXWorQ0moV8
 SCTtGBgrQgCZzy2WhmfnaXQZYTUSiY6xXrJmr8Hp57TOV7SN/jcSqOHZpLGW1afiitbn6V54rqY
 fpnOTkFmBUzhGPPaenVdKv6oQDoAeXjhJYqvlA2kgLDouU7m3L0eLZtF1v4wbcK0K6tNylGl70D
 DJ3LfW37PDZSV4uaGFg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_001952_913194_D0BF0D34 
X-CRM114-Status: GOOD (  12.32  )
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

Document the QMP UFS PHY compatible for the Eliza Platform. It is fully
compatible with the PHY implemented in SM8650, so use the SM8650
compatible as fallback.

While at it, move the QCS8300 one so that it is sorted correctly by
fallback compatible.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v3:
- Fix commit message by dropping extra "the" word from last sentence.
- Picked up Krzysztof's R-b tag.
- Link to v2: https://patch.msgid.link/20260220-eliza-bindings-phy-ufs-v2-1-4910bdcc585a@oss.qualcomm.com

Changes in v2:
- Fixed the order by moving it below X1E80100 so that the fallback
  compatibles would be sorted, like Krzysztof suggested.
- While at it, moved the QCS8300 in first, so the sorting of all fallback
  compatibles will be complete all the way.
- Picked up Konrad's R-b tag.
- Link to v1: https://patch.msgid.link/20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a1731b08c9d1..9616c736b6d4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,6 +16,10 @@ description:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - qcom,qcs8300-qmp-ufs-phy
+          - const: qcom,sa8775p-qmp-ufs-phy
       - items:
           - enum:
               - qcom,qcs615-qmp-ufs-phy
@@ -26,8 +30,8 @@ properties:
           - const: qcom,sm8550-qmp-ufs-phy
       - items:
           - enum:
-              - qcom,qcs8300-qmp-ufs-phy
-          - const: qcom,sa8775p-qmp-ufs-phy
+              - qcom,eliza-qmp-ufs-phy
+          - const: qcom,sm8650-qmp-ufs-phy
       - items:
           - enum:
               - qcom,kaanapali-qmp-ufs-phy

---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260219-eliza-bindings-phy-ufs-3d95c2377aeb

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
