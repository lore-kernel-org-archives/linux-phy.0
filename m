Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FB20CD5BC8
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 09:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAfMfVZZAA9Nmgxp9uyBb1lyizDsJC3rwI1ezmCwVcI=; b=twlCeFUwSJ7eIf
	sJ4BM4Upj7A3JTU2aWIgrfYNYw9fnpWvlVcGdXhATnlcA4lNOVVU7siheNBC0WNfUNENW4IKpzWEn
	yKToSwwdqcGL4KR+sPpZqE6/IaGBt4/LHjwU4RBsIb9oDQMSdmsbGJ9TzTa8Qqdmo6o1G3X2Iq2e1
	DrPAYyyxVjStYw2QIRkKyhmDzsU1a6b8oiW742VDCjOCAy6M0jDZ0SCRKx76Y4U3tUonoTK4C+irc
	9/bNYuSogU6627Acb1Q5HOWZbeEOxFmPKNTQKzZ6Q1DSpri3QalbO8dA3Nmic9w730m7OHuGloJ7t
	hipdceI05Q0LJKIrazhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRnny-00000001TE1-3Ouf;
	Tue, 26 May 2026 09:10:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRnnw-00000001TDS-2XrB
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 09:10:29 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64Q7DqvR912458
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 09:10:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=T/2aewGB4Kp
	n1y8yQDIKkfGvFMIVNTd7+akHCzOQCLI=; b=Z5y/eyU1uBBwdHYbUe5m2j+i7jO
	K0dQFeC27fVxhamLDGwZaRMGFkSP7UKLMa/Agh7JgS8Pg39WllR+ns4CSj+nZIOH
	cCE/BNOiUSp9hMAJ4GjbPzaaySvURhl4aLXFWXaUwlaZHdiqschMqEHcaDBN4FSt
	T6wNQOrd8X37iVpp2Z8B4jdW9mkadVNgGd1j/UrBHPupHJpxOhbcDZWl/vAjnjCv
	zqsOM84QKZlva8N3x9vfFw4eOUpzs41bwKNsn+j2IGEpGmQyul1qCGNu4KXRvkII
	lBvm9JVFlvvGO7gD9kwzuxVm2hIpD43E1pf23zbFbfg5rD58z5SmwUmL/Tw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ecsm02pqt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 09:10:28 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2be9e0905a9so65978475ad.3
        for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 02:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779786627; x=1780391427; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T/2aewGB4Kpn1y8yQDIKkfGvFMIVNTd7+akHCzOQCLI=;
        b=Z1yRgsYhg69iVnhtT6h7CpKgt3UJBRPUAeYyC3uscVWAn+hP+Xzapaffjh67MRsvDL
         3JOA0Pm40KQvdzWA8as8Vpyhu2VGQ0K3Trnsg11329fnKezNXfP0gpukdhRPm2//T+xC
         FZKQ+v3wpmYIHVbyZn/gPbqGCRIE6mV1y58QplNndhbJsz5a5b+XOjd71UX3AUUpnN7u
         LNyUlkofoqW/9o4pyfa6ngYZo9oPoVV1NzYYIUQwo0floov8OnJf+C9iZI49kvD2kO1d
         LAdewqI3iIG3rc6oDcxsyKdL6Qxy3jFi7GG8c216zLjiCZGhbh9/zcQlGTfbPgPFVdtD
         I47w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779786627; x=1780391427;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T/2aewGB4Kpn1y8yQDIKkfGvFMIVNTd7+akHCzOQCLI=;
        b=fLIvOX3TY+xTVJPtykqylcslad9kl7Nl21M6vQmkPXMoYjz7glet7krDJDFCZKTIVl
         D5oSjqRuVgU6/G/jU0C8eKtxhNlBsvQb1TjFsUQsAaw76ZpPWTJE/DgpOCxp2mJ9fAcX
         y3fvbx2MtZSdbTyrnHjDSGyJ+33euqvkY7S0oZiT+GdC/CSsf2iiGc/5eSXEkwa+HUQ2
         q6HT7h2Crp/9v8DUVCWU/Ebl2NLv9D0NUhbuiIl9IgHExl53DmtdQCdj9haJelF0+LZG
         grZ00AI9ZWR+x3z95n1QIyEPPxdLnXliv2/04ljYNlXA4q0srK4ABbcrWbUyLun4UFUg
         dC8w==
X-Forwarded-Encrypted: i=1; AFNElJ9GbF/vlM4X1OV6qaYdFb3xebPm2DLXDDhFIEsbbpx2NyxcmfPWB43O0O8GDNxE7cFnBBcslxe5jHc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPZnjW9jlGZcaGxv6mm2d+6N21UxGHREqsaTdaor+Kb99hnK/k
	xxtMiOODudfi0HyaK2yJfrdsSyWDmykxNwvkzeYy10hShaJZoKJnobFLcmFZb6ic4LsPaM3skX4
	GnYYgiZafEgTwcQDgSE1APmIc/GU4FFyZPH1XWKLvZU+KKcZFLEnHQr3SNOwvvTHcK4mI
X-Gm-Gg: Acq92OHXYWApmNw5oGEfo8tQBko3mbGLAi2E3UufL721mEeZZlqYaJA4++F2AZE28Aa
	uHCnJ9a8jJ2SIHiBuRVe6dUKdESZ2hBoizbXocQM8DlkzJouZ5ZjDZLa7eH8HzHYxPEyubCvM7h
	Z9Ytom141e3Klv8PD/VvQfrgRd0O+uZDxv5wLGxMsfxHiznhzi+d+s326gjEK8a1lQ3ucrLuAd9
	qkanhw+miiKB28ZEsRkLSMA32nvird54PyP1Lrz3TahnbuH21wQ8w3vJKilIVlBhYL4pdG0tsbO
	iPCK2aSws1LjphlCvJdunfxcwwFROssL7tPKdS921iFtdnHgitjO5H6l7k7AKe21yG74LN0pe7n
	5yfO/+htayINiBkaZgV6/z6wjytPOuA2jrkGEXfv2i4Tf9wRvT2n1Ew==
X-Received: by 2002:a17:902:f543:b0:2be:1c3c:72bb with SMTP id d9443c01a7336-2beb069d332mr184560755ad.33.1779786627369;
        Tue, 26 May 2026 02:10:27 -0700 (PDT)
X-Received: by 2002:a17:902:f543:b0:2be:1c3c:72bb with SMTP id d9443c01a7336-2beb069d332mr184560405ad.33.1779786626890;
        Tue, 26 May 2026 02:10:26 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb5695a40sm109237915ad.17.2026.05.26.02.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2026 02:10:26 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH v3 2/3] scsi: ufs: qcom: dt-bindings: Document the Hawi UFS controller
Date: Tue, 26 May 2026 14:39:55 +0530
Message-Id: <20260526090956.2340262-3-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
References: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=CLEamxrD c=1 sm=1 tr=0 ts=6a156384 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=dkR0I6OD3irOzcp_LXMA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: tKAbF36nNjm7eZUK3vlV48vx8v5NQ2Lf
X-Proofpoint-ORIG-GUID: tKAbF36nNjm7eZUK3vlV48vx8v5NQ2Lf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI2MDA3OSBTYWx0ZWRfXzbVntNl/pwiN
 7PC0Wx3mNarOelM8LobY++tiTYjVC3LyuIm+91m8Jt+EhDB2TzXLFtG6SxAFpxX8/c6M4jmF9mv
 H5T+nfM5V3xUEVV8jarSK6FHMREOwhr8o7kGAxQIELrW6Inp+dx8qdZKSbEPeChuo+dEKmu7bAq
 /pbUwbkbwlcbS0Iw58750vE+N8+GvcGpb9ph+Ygkb6yb7sJoXKmKX/IobpkBCDV66gQU7I7Ory3
 IxdQRcMf7WxVzikgFWacDQfxQgUBnKXNMgo/OvgPcB1wuhCNE863XVH/cdpRd5E5ptT2r8c21yk
 bZPgR+rCRLj1r+lqXq+12FjuMfFpe2TkcHn9iT6GaPqHzkDnl2s7zCzo5fXZhuWIMtfdAgpuW9E
 24SrAqRARYEz0HSEYMPDPeil/fAB3y2Bk3pCA+SXtS7lCyXyZD4MRsJZL4U39cbgyg3vBeso13x
 vpgPketRoqkKMbrQuxg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-26_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 phishscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605260079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_021028_663646_BB567A61 
X-CRM114-Status: GOOD (  10.61  )
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

Document the UFS Controller on the Hawi Platform.

Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
index f28641c6e68f..3de00affa4c6 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
@@ -16,6 +16,7 @@ select:
       contains:
         enum:
           - qcom,eliza-ufshc
+          - qcom,hawi-ufshc
           - qcom,kaanapali-ufshc
           - qcom,sm8650-ufshc
           - qcom,sm8750-ufshc
@@ -27,6 +28,7 @@ properties:
     items:
       - enum:
           - qcom,eliza-ufshc
+          - qcom,hawi-ufshc
           - qcom,kaanapali-ufshc
           - qcom,sm8650-ufshc
           - qcom,sm8750-ufshc
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
