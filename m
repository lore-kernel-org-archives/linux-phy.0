Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48955606AB14
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yi/+ix6q;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=khin68Hf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=J52rWgm8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=p6WqM2KdP06DVYWLIP/dNlYs0IAjkU03S8Y4wQPn6z8=; b=yi/+ix6qCgfdTMLR2ougoXON5t
	+XroesBabLx27bFqMzPGq80zJtdMi+CIavPtGkZ/eo9SroOtEKEQ9BgRP1M4HTNbJICnDaB0GTt0J
	6qxrJtfnC/QRkWjOgds6ZLTTNOu8hPyLbXe/nS7dvmueaPuqGd6Pclu2pqNmwrEBIkxwQoYgxF0aM
	SQkndtxHsRZRs0D0ByaQW+H+wLbMy0UqYdSNB2vZ3hs8ZIGn1H4JVuE543ohTlJJr1cNKFO7FpVA8
	nq0Evu2cdetAUaV+DCeaRLCfSwoKIfz41H14WVhX9tlKZQdtCaLy0b7QR5RhX+eHP6Zl1kw1oP2Gy
	7FWnECkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Vm-00000007Mj7-03vN;
	Wed, 28 Oct 2026 15:24:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Vi-00000007Mi2-3Qiw
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:24:20 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFA4Dh1471785
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:24:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=o+skqlyXi5KXpeKCusnyGNYL
	BwDyHqAI99UWoGRFSrY=; b=khin68Hf4FSigvAPJXoQdZyBQsC5NwXBK2xXMffe
	7Le78ceeacrTdHJ/4mOUdZUtg/yf2p0mLwS+ax77lI+6FKTuEK6ubEbHyvOIArv7
	EoS9XEx9AWiPj296hs3yiJGY4hKOKDjpBrWzJQGf2ufnc8Rm7zdpFPu6z4vhlEF2
	vyZ5MOToHwHDZPLbmhJFSlPBxLSyaPOjStBzHR9tUDuHtxHVexFix4iEHv+Qku3M
	88iNfterTQK2dRTClSZ8359btgLHFpgjSkoyiuXAoWRR1LtqXMdKI4LiseJYpqbg
	zKscRMAxvAQ2X9jAt3OwjaTDZsygHLsD2yGE6dWBFOf1+A==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkfehh4w9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:24:16 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5eacc615f73so1192699e0c.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793201056; x=1793805856; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=o+skqlyXi5KXpeKCusnyGNYLBwDyHqAI99UWoGRFSrY=;
        b=J52rWgm8+14jLx08tZjmzAzyylqMG84ba98wyR1KzowjiymesQn5U+I7F8GI9Gn5a2
         1Xk+C4zOasdQhzVJdb4SIytKbpOnX8wqO6lgMdeC3Ifez37UcYy90GbrtNblSk3HNN+I
         H5/h4JiRRPjK7TenIvEhnPVkfyC+1LZiLO2FY1GyYwGve0gsi3FIyH7xj6CP/w8CzXrY
         4rbl16qr/Tcx4B47CnP82rO/T6KDvWui84plTwnKE1xI8B1Mwb8bQZAeM8e3q+ZSACKT
         VY49pVcHfmxeSJ5no1lTjNXahVbIptcpt3NrpV8jbGvosKu+WMLh9pE6DElk6s3wDmEq
         p2bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201056; x=1793805856;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=o+skqlyXi5KXpeKCusnyGNYLBwDyHqAI99UWoGRFSrY=;
        b=buUlwt1YhQCa9GCyEHQjSOCgO3ZQQJ4eHEoSzIITp8sXWhg6WHF/UIToqiVK6MSJvA
         DwEj7oZoVwHhapDMhlEFL6xgSeH6OGiL2r18JDbpuFkFLcRjAnlROJNx8PWopP2k7sbf
         yfPm25s32yKWauaH84Oc7C1tCu7WWuDr6Bm7MpQcCp21BJeVMgFenH5hy/ZqYVOaa8mV
         5i+4rus3b6fV5aB4XYmoOWZybE5VVMlEBLjHdNNje4T2gVGe343dtT7LCbLLz/d4zBBa
         POQXVmzAPu/jIcPsQPJu93evYTbWgyZ6CzpYcuHzFdi++x+4MyNAJHGDECtV/rKVU7Fs
         n5kA==
X-Forwarded-Encrypted: i=1; AKwUvBzwpBk3eCIxN+8xXt44QrNrHhU+mKbTy1NQ+rcsoQScX4tZ9cNA8g/xbFlbtYrnLBys8W7dQjGTnKA=@lists.infradead.org
X-Gm-Message-State: AFq9FYIOegnfwZ9Ba9OCHDH7iInypScnOoZD5Dp7trDt0RFFIW5rc5YV
	eae/+xuKmw7+gjDPVa+m+O+66o0cYfe1Vt1hTM8RrwsFYll/b/eJXo+rpcm1KLXRRmly249eefN
	ySw2juIGR70EKxLT1XTXu3hq7pm9Y4ShX3pbMUrf96DFAk912dv79Qn3H0l0AKIezFebR
X-Gm-Gg: AYBFou1VSVVnZ5XTAIyi6pYqeNhuk42aiP4+0DzV7hgUIV7W+Kz4vkgoGcV6gxqMjlZ
	jlBYVgEAkp6f4rk1ahiTIAWyq3XQU932JfqlRB/951OMIXscAb+asRpHAWoH6WYKJZ3yTtVNz2g
	tndAGpu8egyruh7PdaeI8/+x7+jpn7UtrIx+sHrHTr2Bdl6thXc4ug4N0MlqrqjfsXxauo66cGJ
	LkvZoGWW8wj7qlgYvOU7v00tFPAsMCSp5nlDjccNMfpqpYHazGgLC4+PVFRwW059cBqhr7YaFw6
	Gu0Yu68aipfdNJh9+FwdrbAFcHuHh+frbYQAiCWLY4EpGbo4Q9mSGpbe8EQD5Hbn5pCzfCN1mGO
	a+1zN5baAQ8XJ6YXi0fXLSRMoJHkUIrKY+Qk35ORCHaw60A4Qhuggq8F1sEm3AdZocA==
X-Received: by 2002:a05:6122:4b08:b0:5ea:c874:6c4 with SMTP id 71dfb90a1353d-5ec4cc46813mr1425404e0c.16.1793201055883;
        Wed, 28 Oct 2026 08:24:15 -0700 (PDT)
X-Received: by 2002:a05:6122:4b08:b0:5ea:c874:6c4 with SMTP id 71dfb90a1353d-5ec4cc46813mr1425340e0c.16.1793201055187;
        Wed, 28 Oct 2026 08:24:15 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd3705sm34673743f8f.45.2026.10.28.08.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:24:14 -0700 (PDT)
Date: Wed, 28 Oct 2026 17:24:13 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] phy: qcom: qmp-pcie: Add vdda-refgen supplies for
 Glymur
Message-ID: <fk26762ufbssofc2hpm6skrxk5ox2yie3zusviaimik3ueowkh@2tcgguspvque>
References: <20261013-phy_refgen_1012-v3-0-f28305289499@oss.qualcomm.com>
 <20261013-phy_refgen_1012-v3-2-f28305289499@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261013-phy_refgen_1012-v3-2-f28305289499@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX3z03F8ZIphZZ
 EbxJ8i8FJG8FipjXgQibszuhuODOn+8HzPBIuzycLqOod/Y/urKdo4+hyq0ivPiuk767cwlqNZ8
 t8fwBQSrsFSKIOhtf9YvKkqhv91hN8Ysd1KQnLa0FMy4Hpx/BZHqqwwAjtofUlVksBSRF4c8yNN
 Out5wMftZZ7sVCjfwPoSExG8fB4dsg0Pw5SsQ1NyvnWz3CrjWHkuUz/mejQbb8/QGWXUGTlURaC
 53RbMot3coQk3tevyv2d/cc64HzSvv1yPn+HcNZ10Qeb7cg/hPp2EAPBhkpn6OvLvgQg62jdiL3
 gl6Rn9Ohs5MGlvUXoNCebDtRhiD/eAte8gBFNeNpZAiuqKDktkBYZtt2GqYhPUps0zqcGa1GH9J
 dLqR6C4/f9ER55q/pwH8xwTELLhf17koK4IGibdStwpjBoHbFA7IzzOIrRpZN5RqCwyf3YdYyzG
 XjogVJEqnnXWH0KGzQQ==
X-Authority-Analysis: v=2.4 cv=A/T5rKWG c=1 sm=1 tr=0 ts=6ae213a0 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=_YrMRA3nyeZEwJ_tkEoA:9 a=CjuIK1q_8ugA:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: LAKcYvBYynnUILWun05oCmcrufIa5dzN
X-Proofpoint-GUID: LAKcYvBYynnUILWun05oCmcrufIa5dzN
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX5sOgx3YUSlfr
 C/DtibdGkEtl3IBM5oZVMkH66L1QfGVjrRAPaKyaDtXcOxO0pY/k+zJEucrW7jYJ246dZKxIYs+
 hXljpeEnXIhZ/DjDB+UKlhx+CrHwo+Y=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082418_979786_E3517574 
X-CRM114-Status: GOOD (  10.31  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-13 03:16:46, Qiang Yu wrote:
> The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
> two power supplies independent from the PHY's core and qref rails. Add
> support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
> glymur_qmp_phy_vreg_l list.
> 
> Update both Gen5x4 and Gen4x2 configurations to use the new supply list.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
