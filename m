Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3CAEC43458
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jul 2026 13:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niRrJNzncBYBNqAgxMRd4FfxR0ROaS5BkTQ8aF6ucmM=; b=x6aH9st+8oeyck
	zQW/yVjHNHZljI+ZGA/MEEufxUT26mPjD2ScJ9UHXbrBWJEd3OBzaJNE1hM9Oli8dhVTxkGW76nav
	UbvQpeUmsqyqVedeHAhnG1xiiKwI2DZ37WhVm80IR4WOvLtL2O/ioK/QgbafU/61RQoxfK8xPFBRy
	p7obeYYEfNuxtCkxy99MJIgl2Y/nU3oKNfsJ9OhEwKNAVrtNq9aS6wnMk+OliYq22eOraTvZvhVuJ
	EExgVBmV0oiVi7oi2WuXOzypedtgLQ1e5KDxSTfNKJ7gKu+FCNrJ2/tV64gBsPr16/eY8PJpzLrdW
	95TICIBLwTohFTFtpxhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGOw-00000009KRz-2rdl;
	Mon, 13 Jul 2026 13:08:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGOv-00000009KRK-02zI
	for linux-phy@lists.infradead.org;
	Mon, 13 Jul 2026 13:08:50 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66DCDf5x1480820
	for <linux-phy@lists.infradead.org>; Mon, 13 Jul 2026 13:08:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	URgzAqKEdxN6silXFEDVaD53BHQnlc9kI+2F4MNt3X4=; b=bl0Ga2+vu8Rx59Mm
	XMNKBXLpF5hY+Syr2pTQ65ieqS/vPN0wgIXStqYxGpx5SNAZGxPwXP78t1ViNOfQ
	HsLg8otIKf9Sq7PRxvn/XLFgqUttYWeRkt6Pkbhx7gQrJPwaIfqmL4snW9VveEH9
	Y6AENQnGChpeTioHkcMQnAXidfICqbAo/soHIZBWSEYLdl5EhO5FjUsSssn8vMJp
	ibjSBVBddtoKNlG3trXqnY9hJEG7sJIbi/jGLwM1VGPdCEFLVbGmnUe60+NJSWfm
	1f7bcvlCmUzYJpB5n0cUFBQP8jQCbYV4R+EAfm5cageW1YF9RvDGKfGoqLiM1Nyo
	8rs/fg==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fcwavrtt8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Jul 2026 13:08:48 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-6a1240143d0so3991289eaf.0
        for <linux-phy@lists.infradead.org>; Mon, 13 Jul 2026 06:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783948128; x=1784552928; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=URgzAqKEdxN6silXFEDVaD53BHQnlc9kI+2F4MNt3X4=;
        b=HxB4uJQzJEzh8OE1wDB0c56pXVL5j5N4vjsGHjBtrDXka0GBilYxBMqvjj35QCFN1M
         9igYrwqxjeDoeUReT27xZW7G6wv0hBLR3qh0/o/BAupo5vn8MVH2wYNgF3ecKF+l1yzh
         U/x0YhaDwHpy9xUisSw74CFkVQbaz14XYAVPWVEJKXllZ/qA0lRBOqNpsZ1EaouzoPkj
         9FjBu9lnuZHcy+DAFS560ysllLJ97IUrUqfCu1OQ9FHTiYz4pwL3qpK9P2tDAX13rGdW
         XYY7wkreOZUTuLKHztLRj1DoCvrzXtvTaoXyqjoMZBVhUFjMISbzhSF9vX/h04fWbywj
         MHtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783948128; x=1784552928;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=URgzAqKEdxN6silXFEDVaD53BHQnlc9kI+2F4MNt3X4=;
        b=R7WZszWFs3BZu4yXYBA427NeaX37ao50CTlfp+b5hBTf8/megb90uDswVoGi6Ivayi
         NYGfY+RUK+uDn1GoAXuEmkWN76pGlgu/zOhm96Pe+tkzKLvb/PPMDwXLFBMe/0V6BQky
         7lndeaumuO74TPdwpj2Cm5tCXgivymhOzLHfSqBBkfE9bsxG6evVmlwwdgwtpNWmkuZj
         kQZIBUzWYhqzeoL9zpKP9uGlCFAk7HpR8/+AB1uScsve6o+fZwghtlTvVz6GaCxVKAoD
         sxvj9asojL1gbFrI7a3YFC5mQyO395CpSI4ZeG8LnbztWNRxHes6hTZ1gq6fQPiflXNE
         YiDw==
X-Forwarded-Encrypted: i=1; AFNElJ98PUXPXxrDNYu9VVcnEjW3tKmq7v+ortV1OnchXWHhGk7NP2m3g7r1+nfqRqpOanZkyNNo3kLmVmA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAEIDw3PdrEZfePZsC5AGEpThME8xfN5V10TsCf8C7AAmx+VuD
	uSq2FB+916//w9KCtxwhut/gJBGEBlV/3/J/6f8+aqvr/rzhX+X9xXyqbrLnnvFCMZQYpUHsKDj
	WeBsdCMstT7zoXclmec4WDjIgfK0PpucNXziGKNV2v3ZddgVsLfxjbN7qNWKuiyFW9NWY
X-Gm-Gg: AfdE7cmbLajBJGQt+/uauFZ3HDePLGCR6MakWzqpivIIJ9i/ECsoCGMssfLOSVnJCqz
	O2NRfJ34DtBptmwUWqBmt3jRAhkfg4X7xY7GU+gslVCghqrZgoppk56efpZiZgVzg5JzserxzCT
	/okSERUE7MR7x2wpXGu1Lg3RlwoJ9hzTtMSvpNE9xjSLiyhCnph6/spSFLrjOIxf6CAZ/6wa/j5
	iid2Z0u0e7pdxJSF1pLpiLiv/gnDms9+qYsVkO0PrzYPS/SYCIQ1RGI6GKWP9NhEvAP5ZwKLynh
	W/yHNoONA3heRupLprI8Lz9yoMUzpM27mDaRfCsM4wpcHx8xLV+fY1Dcagy/LSfUk+VwVDm0h7K
	PFzLkVdx2/LlBo7Fnw8Uji8FJ8TEvl+Oxe98rbsxNcVSn8ule/mAWaAq1Uc+SFAhxLFyR6FFD3z
	bR/mVy
X-Received: by 2002:a05:6820:2d05:b0:6a3:8093:a171 with SMTP id 006d021491bc7-6a39a82f11amr5648109eaf.50.1783948127881;
        Mon, 13 Jul 2026 06:08:47 -0700 (PDT)
X-Received: by 2002:a05:6820:2d05:b0:6a3:8093:a171 with SMTP id 006d021491bc7-6a39a82f11amr5648092eaf.50.1783948127472;
        Mon, 13 Jul 2026 06:08:47 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6a38e16c7d8sm6415913eaf.9.2026.07.13.06.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 06:08:47 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Mon, 13 Jul 2026 18:38:29 +0530
Subject: [PATCH 2/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Maili QMP Phy
MIME-Version: 1.0
Message-Id: <20260713-maili-usb-phy-v1-2-3285da11f148@oss.qualcomm.com>
References: <20260713-maili-usb-phy-v1-0-3285da11f148@oss.qualcomm.com>
In-Reply-To: <20260713-maili-usb-phy-v1-0-3285da11f148@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783948113; l=1096;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=UOsIgF6my05LXHOCsgMOLRl0/ijOlWoiUY23cNh3Noo=;
 b=gLotHIuTQWD/8ME1hzzYrtw2qcDrZhzaTUhRFRsCnP5LAWHJIhK2furLgN2+F/K225spvZJCJ
 BVsc0pZrkqUC5WmQ8+JSioPJxYwovxG5auFs8jX0xZCq7820vp1T6bt
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-GUID: ngndoQPd2M9S0YHgX7Du6AjwLcHow7dB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDEzNyBTYWx0ZWRfX/ynHqIReMMWn
 p9DhoqHHianUZ/BImXaqc6AtvJMscq1lOBwUnqCE7xcpUGiHlhTuGADTHQg5arRNSdGMjapCaSR
 FkRlF3PzPjs5n7UdyXQOHZWdpuaBt2/Z8I9jyGfRvVMS0nImx34T4XUNbjMX5W3lYeWtzKH4wnq
 pMB3O4joz3cg0CHNGt8jtZqIk2szSteCrw3ApFQ/66+bDEVvZdx6QFqzYxnyIKCWmF3Jo8Nw5kh
 SJAh/pGIS0jePu4Y9xgsYxjBEDravDNyqs8CKYaWClTKYUsb6XBd5Zj188oDffG+h26sm7z8pqx
 xBsbXey67xgNTGbDebIknZxZKTZMKnyguk67sAd+IxmiWdOTK4hFuTKGSH9oRbFMaBeiAzsaij7
 U9O0b2UOFPaPG4XMRMzYGLeZyVIWib1MMoYjbH8IgstLUhyOid44wGcCqlgQMRVxxKmsadOeSS+
 QhEPu8QVXppJwOI8qxg==
X-Proofpoint-ORIG-GUID: ngndoQPd2M9S0YHgX7Du6AjwLcHow7dB
X-Authority-Analysis: v=2.4 cv=dZSwG3Xe c=1 sm=1 tr=0 ts=6a54e360 cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=c48FE4Zzs7BoiMeBshYA:9 a=QEXdDO2ut3YA:10
 a=k4UEASGLJojhI9HsvVT1:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDEzNyBTYWx0ZWRfX2OkcOGnIenDt
 5orcQzFeSkS1NY1T6iHZ0tO+AWVtgyeImTvEGoljo2RgHpEb07LaRWrezHJlEB3A6ovNOZrtDKB
 /r2cpz9GlLvLHKCUvt7LHrMFAzjNT6g=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0 spamscore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607130137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_060849_082413_6943CEEF 
X-CRM114-Status: GOOD (  10.47  )
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

Document the QMP PHY for Maili which handles the USB3 path. Use fallback
to indicate the compatibility of the QMP PHY on Maili with that on Hawi.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index ea3f1699eee8..f1bad6b1739d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -24,6 +24,10 @@ properties:
           - enum:
               - qcom,kaanapali-qmp-usb3-dp-phy
           - const: qcom,sm8750-qmp-usb3-dp-phy
+      - items:
+          - enum:
+              - qcom,maili-qmp-usb3-dp-phy
+          - const: qcom,hawi-qmp-usb3-dp-phy
       - enum:
           - qcom,glymur-qmp-usb3-dp-phy
           - qcom,hawi-qmp-usb3-dp-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
