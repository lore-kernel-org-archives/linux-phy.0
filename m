Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277A0606A321
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 11:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jVnKv9Lv;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=W3BoJ6xW;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=iKn4g+2c
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/iBhb8O0B2UpeEQThGoDjkTsvX/qSKd8L5OkgRsBXFM=; b=jVnKv9LvqD3mapIdvCw1h0onUW
	3e9aL9JhKIAc5ejXGBVPrBgwQDUTJujE3f69AttdbzS5s9w1KbSIJDoLslxsfd8ZCAREllkdQZztn
	UaQi6uUt6W3+GIaNr9dygcUbDnQHRQ9qIKb8rJR0QTpzeLwWZcCK2fw8WzenkB6Mf74WpR6/Fvv3+
	FBNJCNXtDYjevEqbCAomnqjN6e0HrNTXpe9gw3NAPrtT3xmBeZtOOnMWq9nmArVBSS6hZDPYwOWMx
	xnki9+vslIg4wu8tOnrMUjQynqH4Tvdj0oPUO325pC3lDmbgmN6DNl2iSYFAxkEKhIy5Bv0pkxz77
	XIJfpqkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf62-00000004Pjh-3k6g;
	Tue, 27 Oct 2026 11:12:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf61-00000004PjD-0BWZ
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 11:12:02 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RAdvLS1921722
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:12:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FtCLJyhlU+SpPWQsK4RHlbtj
	ukmxd1FVsKSyDoa/+wc=; b=W3BoJ6xWd7t57pU2qjNrJ32YoieGr2XWsKmWDWTr
	wpfyEOPEpmjaU6fBJIRXpbhgqvLO+/oyq1KlZZvVxVMcXdMF35pWSv7t/sHJ39pu
	HP79jp7mp5dOERsaBIwzaWKDSQVqUdIXMf0mPjBoUVVl7Ilw0jzSVi9hf+bq667v
	oFhDecKIdSAteeIuPnmnzs4s90Cf78Uoun0LZll8j8K9uU/hafwPkUZl4tTid+2C
	XBZrHeyp/UCkcA6HdhSt2fLQvvoq3ey2rvChOw4n6JcNU6PFrODWgd5ZwBpib3sO
	CV8W7yM3MzwTwnCTzX63iHMBYS+jz/sZ8hzJjDxLHCjXRA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjrq68jgc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:11:59 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93cb98809caso723314885a.1
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793099519; x=1793704319; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FtCLJyhlU+SpPWQsK4RHlbtjukmxd1FVsKSyDoa/+wc=;
        b=iKn4g+2c86IbR3qmgMy5tPBtm5hYrMGQSP2lvSkmc+uqKzDLc4zzmQ3pfKlOytwPkr
         CFgIQ6QMuexToUzhx18nXpveQW+k8S4HMfmmbDRouWJSVU3K8ii4tWgupQTAEZNSwm9T
         +2wFnNtdDaKRIPIcJZVAvo1uUmqE5cAsIYbp/RF1QxAgJjdai7K7lOeI4Pa/0FNzLFXS
         KEG72USzm3ue8wv5c513EZUhYLL6VaAyW+GhSUVRuWt2GR8zTfLktKVsBBNbMJRH0gVT
         2tbQRDVF7lbhnVqbA1vqxEhkD/GeMlMphDSQGTyPZx8VF3dLUwRNv16TBnQzkRwhU1z1
         o/0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793099519; x=1793704319;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FtCLJyhlU+SpPWQsK4RHlbtjukmxd1FVsKSyDoa/+wc=;
        b=ZYAIrK6E2Zf8S4v6yO0twPu1E94GZtBDy+1SqOorct2s0gTb84UgYd74UQgo7SC581
         8lNXOlOPtWBiUd/8ZGadXjJWL99tp8ynV2sz0HLhMU7cGGheam/a5WZn8ug7dF5WhFju
         MV4EgtXoclei3jM9StQc6ysJpfwYtSwElCLWAtmwklFD3QAkG0QOt/VSICu9e2E1a7Dl
         FkdyEWQu+lkRa7VZSsS0iGYVjBNX6Ck7zxrczdbNc3xVsR/H5wrdl3DxyF849D2LA4R5
         hVaYlHnM75oyqycHrJDP8ElLYtDj4WghnL+QDxwX25O5NzubideaA1FX0XaPIbrLl9B7
         WGFg==
X-Forwarded-Encrypted: i=1; AKwUvBw6GtSJt/g7spyHP0oasaro3CzJ1ew5apl3r+hVvdVY4/Yuas4/W9xOQgYScjEdE8BpXBi1Ky9EXSU=@lists.infradead.org
X-Gm-Message-State: AFq9FYL487w5npqc1irHKWhu2we9GE1U0FaHvGDiw3hHTIrQxsUGhXAh
	Tkxl7oD2JL4jGkiqCsqC3p33sssqC045kP4kkAl1Xn9wBD6cnEIbVVmol8tUpN2UCwIKCQ7ax19
	/q0ikdjPQ6hg6RjIXQi7HjbrzFnGJ2IJE8F19KUSVXEU7WWXSAPkeTwkTys4hC9vZwhf2
X-Gm-Gg: AYBFou07vGofamFFLsV6A5Ep9cjy0LxqeyAiAD+DoQQrth2HvspmBXT41Ka9/igl/Ci
	75RUqXKjLfixs/bL/EMpCuHfngKJF0Yo2n0VSUakxPBT5CvtL9Lt8bn7C7UI2AlTb4m+bdUHf9v
	CGF5VbDMSvQVbd8MzO1wUWBdVeWxNwOWp91KLwDggBaJxp1agI0MYYFNMdE9LYzsFsKsjAK88dj
	8qbXV8UO5g4p5v1IWli23RhQ9+m1TvAFd+mmkscrmRAMOsPCMWb5M/puuwfVXTbx5PkICpgpUWy
	NKc297cBi9tv8VefeOEF2KGJlJ807I+WGzSkIwXJv8VlOvS3XBaWmMpZWfn8PS/W6YjS4fay7EF
	Hxpg2yyzS+a0+h82n
X-Received: by 2002:a05:620a:468a:b0:93e:5821:2c5c with SMTP id af79cd13be357-940ef92bf84mr1471866885a.60.1793099519209;
        Tue, 27 Oct 2026 04:11:59 -0700 (PDT)
X-Received: by 2002:a05:620a:468a:b0:93e:5821:2c5c with SMTP id af79cd13be357-940ef92bf84mr1471860085a.60.1793099518606;
        Tue, 27 Oct 2026 04:11:58 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a359f523c0sm128773315e9.0.2026.10.27.04.11.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 04:11:57 -0700 (PDT)
Date: Tue, 27 Oct 2026 13:11:56 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Vladimir Zapolskiy <vz@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: sm8450: Add CAMSS device tree
 node
Message-ID: <gntt2dsfdsv6iptnl3wo7ys42adio7vogd7eomwuj75yli7e4b@vfn4n3shptrx>
References: <20261026224957.1115370-1-vz@kernel.org>
 <20261026224957.1115370-7-vz@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261026224957.1115370-7-vz@kernel.org>
X-Authority-Analysis: v=2.4 cv=RYwFmFtv c=1 sm=1 tr=0 ts=6ae08700 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=machDEjTdI7jPHO31ysA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: hzQi-OSuvL9vL_6XPstAzLRKfTNNoEpl
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfX7Gf7zQ5NtKkm
 MBBLpqK3PHI1LnKeA3NHLP0ujfmvWs3XeBR7pwzhYmhzZAIGuzpj4xkQAgm96A+Vdg8kgrnXm/B
 va0hA4/VSFjX5UR+64nFvO/Wp/Oh1yY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfXxU5cogI8tSKB
 EKadFQlT+hapM8Ly/9l9qZgj8CS21BmSmxdi6oMR+iqug3JlP/uOZ2JLltWnyYFcU3JYuXNRy8U
 aakGR0l/y6yvB/DTFKIIpRqYFOAwpVuASJNh8Xj9aHxVvC2hjU8wXe7dleSJBMhehtzMvdwya32
 Kpypd5ayurWO/e6HpNDtVY0YDPr0fBD41MbeX+q+HShyYOFZfDx059m505MTi/V0sTGWHwGiOix
 047A6GTORgDpRt0U/3HUNz0Hlsv08UaafTdFhg/GVWrha3h5jKVWUeC/pD+cGKlarFzMuEIbrgN
 R/r/q33D5gKkRP+TA09AL5YCmAaTJOKEoDFOMan1UG5bgOTSbsSwxn492y1YNwztF014Aos44dC
 quDJdQ95UeHBaFOalJx5kl/SRmfhX22fv5Mya7OQmfhmeWhog8R5gRfUpFQ551coc0ctCjD0q7d
 aOpgbFJwM5QBXZvHSBQ==
X-Proofpoint-ORIG-GUID: hzQi-OSuvL9vL_6XPstAzLRKfTNNoEpl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610270044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_041201_200331_39E44AC7 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-27 00:49:56, Vladimir Zapolskiy wrote:
> Add Qualcomm SM8450 CAMSS device tree node to the platform dtsi file,
> the CAMSS input ports are connected to output ports of CSIPHY devices.
> 
> Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
