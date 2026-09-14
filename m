Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6205BC88E75
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 14:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6WW2ECgG033bKWYH//A9ocY/xqAXrDqPOiN+gxVexA=; b=GUD2r/gIqdBTwR
	UOqOZSCpBZ0ifU4EfvPWoycYQ6U+hwIt0RnLVQQ740uXtwexlylXbDWaAD/gCcLrumZaHJHb/gPOu
	BEkgCilDQ5tOkSeFxyJ3bj/nC8jPzal1v3XL1C2l1LfLjgTiTLSTGWgkSTCGi8qhPa8KGc3tX38xe
	A5WTAkxM8wVlKzEkhzkR5HtH35hOJHThot7gftk9N1lrIgaQkmGqBTPhZlkm4gElBNn+EIHQXaH7M
	e69qZpEKInPuqyY5xKjC3CtZxXwS6FzfQfQpln+XAZvlQ71bJnkZyx3hw02xNAW99cb9XACxpCdVb
	OY1OGf3tWEX/BY6UE37w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x67KX-00000003vCw-0PTa;
	Mon, 14 Sep 2026 14:06:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x67KU-00000003vBF-1fSr
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 14:06:43 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68ED0Xmb1025811
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 14:06:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Gnji4ta6O43OZz9qRSk1IXl6
	BaqNTU48rGVf9Qgbt2Q=; b=eqIGYLXYh1Nrbcio2AowZkZ9hL1O7bP2EEQyJ99k
	Hm01vqRYf/BPLVbXrx+QJMlWOsKsRycWjiILJBeKLBbiamFDONALt1GJnzPwPUb/
	EEek1Zjl9uU/W7FIvbHmhRS2S9so8eH8UwDlMV+vxpz8E55y9jn0cBKqvrNf43mJ
	GSNOWnQ94bNjLsGqG8yAYQMk+/StYthr3vy1tiNqQy6B5k5D/8w/qwHY4tf7ryf9
	Js40TADRP59yyOo6rCUV7cNALp73oTnky/mWCCcRBybjXKX+9IvfWR9Zm/nv2Eit
	NAr19HPKiRzrvB1rog0SKpa7k8TZsUt5KmwEAl9F4pPqRA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpdb5s8kx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 14:06:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93a05d645acso465769985a.2
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 07:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789394800; x=1789999600; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Gnji4ta6O43OZz9qRSk1IXl6BaqNTU48rGVf9Qgbt2Q=;
        b=BjDDRCLANRtKpRCtoijGIGUWrPu9OJfH+HFP5rer4DZf4My4BC/0QjnxT7jqHAdFAg
         sdrkLbu9MOY45Asj5oEx23VLJr7WhK3uJBs1Ky0H7dgMw173xQ2fObpD3CStGc2eFu2s
         TQL+0st25ICHalkZV9HO8PtkJvHzIRrIG64fG92OMmT8Qs7MGaCpijT9f+CzHGWMiwFd
         SRclUSd7WcnjMbcaxt/P4nS7pGvIqB1GNqtdYiJJBHNnF/SWAoQqoM3UD6cEaayz0mz3
         /ReMM0DH9wupbT2eaZ3eGHPksWO3yFK2DjbbDQ3dPtInTNkSeA8IKDG/RgbgiywZGHMx
         JaVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789394800; x=1789999600;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Gnji4ta6O43OZz9qRSk1IXl6BaqNTU48rGVf9Qgbt2Q=;
        b=Of5tLfPDkvQwAkNcoJnvPcD2WLdQ7wH5H5XxLPT+sz8JJtpO3iz4CYjGImav+aIjPD
         540GsQgMBADpSGb2ygMGjhHWRs0QLoRkmXP2MLJffSglfcd8Ph5nb2K2byWUuJ4KVMrW
         gqmQx8IifZaYYtiFnEyrm5lPPrTJJMR2jFWOvAptqqRrDwn4FE1AU6b7BSXNpRMu5oxC
         bu9uJGz9O3JWZU3iZ6yEyKlO7FrYy864TEUYEJWr0tXZNs85GjRxps8hkwre3TSXgZRu
         9k407TGKWnA0UfnEfZTH53bRf+egRQf6KWlReZGU234JglYOYYgCNC3MYbBtzorWMn6s
         f29w==
X-Forwarded-Encrypted: i=1; AKwUvBy/Ku0MMq9cGRygZ3Bw5u/QcEfVNtRySv2v/HX8hs91ooB4oFALly1S3OZR5B5uFG/IIpJpUubqtwo=@lists.infradead.org
X-Gm-Message-State: AFuF++m0te6FMRwwZnl5Q4/bwA+LMsftYw0tIVNM9G7Tu+ZeW+lRyRYJ
	vI7CPrZPHhFiClHwewiVleKGWgTkz/b3maL2nSKPQlYJPEvOJQ+tynU7hJyz3XM03be7BABK9oy
	s5Q7BmWN++dwlid39AW0gPWLViIXAF8MvEfYRsX3wFqmZIe/EnTlnHfgO38BeaNgFv93m
X-Gm-Gg: AYBFou2ChIFiw94pq5/0lYvMgDWx9iou0Y4o3Nr+ji5c1m8u4IPDqFaRgbK93Kn8Y0R
	iaAms8kMITTLm2pv2Os4uzd0MavM2UwCeRAMlzOgnjmMvQxm9R5EtzDvSQVR+npcwdZi0J9rTrA
	vhWjP512ZhE9utqsTCV9fxUCNtrEoSeRDiU4j3DDFRNDcbyULOgOd3epTSeaDk34Sc6vQqy1drr
	qwrRuNJXTwv1C7tZYSMlJ7vPj+H3woVGYaQTR99G3x5pV2PKYQm2d4jOs3TT90Hena26kGsJvQK
	zLq9pLoDK56UxXN//HTSoC0SxyrtREeGyIAPzNmlIa1/iZWGpy9YMbush/bnW8W7gCIa0Hwb0Vy
	wePTg5givjQToHe8=
X-Received: by 2002:a05:620a:640b:b0:939:6de6:9517 with SMTP id af79cd13be357-93a29a92a0bmr442392185a.46.1789394799449;
        Mon, 14 Sep 2026 07:06:39 -0700 (PDT)
X-Received: by 2002:a05:620a:640b:b0:939:6de6:9517 with SMTP id af79cd13be357-93a29a92a0bmr442377585a.46.1789394798784;
        Mon, 14 Sep 2026 07:06:38 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.232])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d26c1bfb5sm432396285e9.5.2026.09.14.07.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2026 07:06:37 -0700 (PDT)
Date: Mon, 14 Sep 2026 17:06:35 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
Subject: Re: [PATCH 3/5] arm64: dts: qcom: glymur: Add UFS nodes
Message-ID: <chmhun7dqj5flvbkzpsoz3pdbjrcbplel5rqfvj3fc6ztaw2sa@4o55fods7yaf>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
 <20260911-glymur_ufs_qcb_enablement-v1-3-b9fc5e2ee99a@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-glymur_ufs_qcb_enablement-v1-3-b9fc5e2ee99a@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDIwMiBTYWx0ZWRfX9k72VmFL7YkK
 IkGon1yl2hrIc8E6FEbPT0OCTTs6dyDuMRzhkMV6a6zNRJXqDPpshVItH1MXCP9hcgoB/X5WOgm
 Ea0/qOpMubKN3OO43FVaEpK038KWBs8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDIwMiBTYWx0ZWRfX0ZBH7bIvJf/f
 4lk0omXT3qrcdo7oQqirZfAGlPy3IaVXXyed9aF2py4J3d4YX1RdhhvqDXhIPurxaPlmUgOrUEN
 3mLrmDQBYffyoyWOSlMcBBB2eBTEMjmx+Gq+ORK4LVdz72UqtNMgyoVuTgB/u57PdEGqircLqMf
 a1UBeBma9WR5lCVaN+e3JtvRC4weIGJTpUgYmY59jpvAg8aE1SSDeg0it+LmltA5jPe3XQnvlrj
 Y6TFz87wP6jSLwujtXM+oZNimjv6lHzdBu8B4svcq0F//gesJpgIlkynsuLP09RDRSnDVncLmo7
 mAsgm4wYX/5vD3Iqov5W55/UHjFOGPAPZwpQlkDTRActOULyYHKhvZ363lQxmoX6ypgPDytNZDd
 MJYNW6U1PbBL6AFb3uDilZn2ZKUTwvEgU2sP5EG6quLTlKOcRF/SniVvKwLZleq6Q6gfmr9ZUNY
 mqShyzsxdPcNVfeRTnA==
X-Proofpoint-GUID: PAVmIP4kj4eu7gWioeVp4ENJ-awgOkmi
X-Authority-Analysis: v=2.4 cv=Ie4Symqa c=1 sm=1 tr=0 ts=6aa7ff71 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=po8fGBi+ks8MzcVQGuqtFQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=ucACzhYzkOUm8HD49FUA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: PAVmIP4kj4eu7gWioeVp4ENJ-awgOkmi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-14_03,2026-09-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 adultscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609140202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_070642_558332_AB1CFF97 
X-CRM114-Status: GOOD (  17.38  )
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

On 26-09-11 22:17:07, Pradeep P V K wrote:
> Add UFS PHY and UFS host controller nodes for Glymur SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>

One nit below.

With Konrad's comments addressed, I think it looks good, so:

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 114 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 111 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index 624a9edd602c..7bbc804ed340 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -812,9 +812,9 @@ gcc: clock-controller@100000 {
>  				 <0>,				/* QUSB4 1 PHY RX 1 */
>  				 <0>,				/* QUSB4 2 PHY RX 0 */
>  				 <0>,				/* QUSB4 2 PHY RX 1 */
> -				 <0>,				/* UFS PHY RX Symbol 0 */
> -				 <0>,				/* UFS PHY RX Symbol 1 */
> -				 <0>,				/* UFS PHY TX Symbol 0 */
> +				 <&ufs_mem_phy 0>,		/* UFS PHY RX Symbol 0 */
> +				 <&ufs_mem_phy 1>,		/* UFS PHY RX Symbol 1 */
> +				 <&ufs_mem_phy 2>,		/* UFS PHY TX Symbol 0 */
>  				 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
>  				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
>  				 <&usb_2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
> @@ -4103,6 +4103,114 @@ rng: rng@10c3000 {
>  			reg = <0x0 0x010c3000 0x0 0x1000>;
>  		};
>  
> +		ufs_mem_phy: phy@1d80000 {
> +			compatible = "qcom,glymur-qmp-ufs-phy";
> +			reg = <0x0 0x01d80000 0x0 0x2000>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 /* UFS and PCIE4 shares the same clkref on glymur */

On top of Konrad's comment, I'd drop the "on glymur" part entirely here.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
