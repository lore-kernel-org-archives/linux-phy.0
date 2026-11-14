Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D65606A899
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QOlfYRNc;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=eKQUzFz4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Q72VIBxk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=v8kbBWktaHw+l4FKCJfSCvFYcEOQKEsUBNK0z7bbU9k=; b=QOlfYRNc7EtAO9YUi5JAqgabIQ
	gf57tT5WiseKA/gwFgi4sE/6GQ2bd68zejWnQCJ+yzTa24+OUxP8WGYs5gyGFUEG7SvAdlGNOd320
	q/cmmk1PxejffWHhzy4XdUrlpEQqvaHe680N8ml0rznWqO3PQc8PIEOwXinNs7XXIlpQhDtBsh6PW
	Qf0PTLa5U7ZFtwfpayyQ9PvdllO87R7nCX8V2n4iop+ZLRTpRl66G8PT5DPMltmfIsfc+/MrGAKQy
	LewyRGDFcaouYNxOwA8jkHuJN6sWElZObt+aOPKiUwkne789OqBJA9wqFhiLYf2NZcEYMBhtGe5kY
	QpDaW8Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxE-0000000FteC-0XZt;
	Sat, 14 Nov 2026 11:29:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxB-0000000Ftdd-3tVm
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:29:55 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wG4u3844747
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:29:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pTyV354OgCgsC+UdeFF5DsnhBflmhvuYXStEItKr1io=; b=eKQUzFz43741krLN
	/oALLtSYyXkq0AcsL/w4XtHfQeZ5csEulv5/mfpFFrY/JJKvqe89fx/f2KSIy+eJ
	dISWagwXVvYwdrmxEgJKlLjP4BRroC9WQU8rXEIBjFB5NVm6p3jYJZAgQzT1jh6y
	y6yNldtHt2cU5ks8MQhQz+iABPoDl+LWmxBTIGkK/+vVPo6tUsfWgQrH7L9kBvBC
	BbZxkXQAC59IKutjCFhj5Hmv0W7oNolY7E95TBTBcGfEOsXLrNls59VgOLQL7RGE
	nAX9B58UXLgmi4qZwcku7szYxEiS0Lp3LGNCnoLEyS7Shlos+vN785DJchulAnly
	gwrJFg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhjqgmpk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:29:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-55d2c49c3d9so786431cf.3
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:29:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655793; x=1795260593; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pTyV354OgCgsC+UdeFF5DsnhBflmhvuYXStEItKr1io=;
        b=Q72VIBxkA5Dwzbyh8MWC+BCSWZ9frDMZ3/EgalPfBISeEb0zz235pEgYD3h/TnGZM0
         NBtQgcKul8VuR1K6Q08RASZEZH1HJGJ8YamACsgukN7IjcMZFrVz+MjXxM5HutVthK2c
         4W9W3RqnnIIYZMR6ZvvfNwiWa4d1ZtI6EoxsuDXnUmh/hYfU4O+pSWDTNsNdHPI7tCqu
         jQqM5TPYaWdp0lu8yKdxNUU/8LFDafD6ikm5DgQPdhSfN1xTLKfp0vKxQlbIzzvlti0B
         RFoqcTwpkPfbkLsCjTxHuAb3NAoK6QufEij/CP/ZpZk9tl+1eSXcHfEPwWiRCv2G2k1N
         r7vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655793; x=1795260593;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pTyV354OgCgsC+UdeFF5DsnhBflmhvuYXStEItKr1io=;
        b=BvHjB4Yr+ddbYNXkOuONaOKXV/1slciP1tmsW+v8gImdh0ajfp/RZMMQncGlAdwmWn
         ETBy3vvx5RTeCIr9GWFhKtztCI+TGXXcOdiGucAxfTpF4p71B6OgUbt9tuxsyBNeNHso
         s3tXMhz6S6O7Nm2rn2kFAC6pTySWIb6CgNTmoKC4D2f20gmtZF6FQhIWgSw8T3X77hlO
         +Y5np9zpMTQAZTKXR24ynDa3ARHGzEibvKrzBpJbsLMqc21WgRQAJU20w7rw26tsZ2b6
         amOor5+Ib9FPkh+0FUwYcA94FCbt5MUka1se+G7HYWFPlY1Gn8+fu4saAxmEW1/dvXg7
         xVlw==
X-Gm-Message-State: APuU4Z9SoVM+G3xR/scbm2XbOxCJzAsyt/1NXoZUxyNVQ0bRnB9TJo0e
	P5L7IVDRLyFbjnl3tnvmMg13Hkxxkq1hLb39Yq0aJaWOLAwl1fIsEEvfeh5gV1H6Wdl0NJ34e6D
	Eq2cibSRYhuehWNDcm1/Xj+OnlwP/7RJ42SRi+gw0Npjbu2+PRWvxtHNAAv/+OgeSBsHS
X-Gm-Gg: AYBFou1Gu5Y19GFnacAMSLYrWyNYRznJeKJ/a+R1SdI6ZYVU6V/m12abbGIZygJVomV
	E6GtXLoJTttarW7xAuLQogm9msFTyOO7b+FjEQySRUIT7meRE28A5YN1Afsp1zunI1/I6EfRRyY
	kZrdjLkm3Bq4gK6N04cHW/OlJvDIVjewKW+aVv5MdvFXiCEuzDnnOEdA7mqmtTgXGR0xs21uDbs
	uWcvCqmCNK1vZFeiovzrcKr/GHptldPBg2jv+nT05LY4gWHQUI46ZFDqkuSIpKMJMO6sodRkPC7
	SfWhXKeBN82dS1/GECCG8LtDLbJN8xu0v0Ba90u1kZgp+y7+v8hLuMtd+PBCoxLTkZdTMk6NRDg
	y8UBhL2NFq/axSX8MKZoq1NA2EwnhOcqS2nv+s+j4LUUU/fYk651gCrtf6Fd68EmPz6h+OCTl8M
	ox+Mx5eBX/jd3w4ab/6OAQ8KwS6b4bVISQI5vL9P2K
X-Received: by 2002:a05:622a:5c07:b0:55c:37c1:aef7 with SMTP id d75a77b69052e-55c37c1b4b8mr34089341cf.77.1794655792535;
        Sat, 14 Nov 2026 03:29:52 -0800 (PST)
X-Received: by 2002:a05:622a:5c07:b0:55c:37c1:aef7 with SMTP id d75a77b69052e-55c37c1b4b8mr34089191cf.77.1794655792088;
        Sat, 14 Nov 2026 03:29:52 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.29.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:29:51 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:18 +0800
Subject: [PATCH v7 01/23] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 SM8750 CSI2 PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-1-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=1075;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=LFc6jx+MXDH94lWI3ZDmmoldzQASgCtkGLGfmGw+wwg=;
 b=qQbMkxieG7t3MHs39IJqk6/8ONMjTaPIKB7+zb7r390+yjZnta8SFA582Lw2EtjV9kt1MoFe7
 ZbB3RdBwSjZDb0AfWh6sGDhV1szHrA9qdW8cpbOGDDd8ztsmVi4NfG3
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-ORIG-GUID: ewOoWhe7hAm3oC-6nA1pIbByslzIdcOY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX1aJBhJCvy8mB
 OEP4zO5sd67C6xbWD8RP1AeTP9oMfubPat9jidLLsI0TmHq63Aae1LGV5OLUbAsUhvUH+RGDOHU
 VPUx8eM3iZi+uFxb1aG+GqBTt606bkBYBromufF18G41CEYodU13mX2JWG0tit9yYMJJclafV10
 an9kmxaM5HsSWuksAE0ZnUsp9RDbBkSIdKOBJQRJD9C2PW+ZTfeOSVAK/tfWKzZ3h/SoHriRcmc
 VtJoRTWRnVtFvoym342lse/qBH6GIyIwyJsrBE45hBIPbU/H1sONT/iUAgmf3HSFvF0sIwPhfCH
 O/yKiwVIZvcw6DnbKWHGwQVqT/hME+P1cYj+Rw5beetxatFlEphQAaGCN19t1ESr1Wz4879xi9B
 shNT215Q467tQvdhgPpWJ0MJxJIn4E3ZvyLX0aRc2FhKw2d6GsBopcwEKtM0H4yu2nfC/nzvCW+
 prrPjJNsQpQmh1et7jw==
X-Authority-Analysis: v=2.4 cv=TqJzFzXh c=1 sm=1 tr=0 ts=6af84631 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=CbQ82e2HgpuiUCsW3z0A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: ewOoWhe7hAm3oC-6nA1pIbByslzIdcOY
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXxaVfly+1owXT
 K6TtjdIs1tAnr6ambgXQRnDUIrHo5F5KlUGlppLK4gIZ3XZX/PqDGjPUMhTTMvq/7wpLzPdh12c
 swWg8F+i6MSQKME2aqRSsSqClh71JLc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_032953_985567_B6578897 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

The SM8750 camera subsystem has six CSI2 D-PHY blocks. Describe them
with a standalone "qcom,sm8750-csi2-phy" compatible, so the CAMSS
binding can instantiate the CSIPHY nodes as separate phy devices.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 6e9eb8e265df93b631101ae13f31f6365b6239b6..8ff3df1d0d2787b2af0499c1e4106b86f56ff82c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -19,6 +19,7 @@ properties:
     oneOf:
       - enum:
           - qcom,kaanapali-csi2-phy
+          - qcom,sm8750-csi2-phy
           - qcom,x1e80100-csi2-phy
       - items:
           - const: qcom,glymur-csi2-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
