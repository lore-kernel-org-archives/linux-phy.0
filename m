Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABF1606A326
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 00:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=C4tvXq/Y;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=G5MlFlj4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=X65eAJ6l
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LunhgTXlbEGF6eicuzL8hxUzINKrlKvCKdlL5lzD+r8=; b=C4tvXq/YxSkVwD0SHxwVCcDpHK
	wL4H28jxBZ8Rzpv8/VpFwt+k3v7kscPg65yDn0mn1cx4cFCC4OdRzw0yIGa8Q/LNBlLvun0Cf2xN5
	jGSVFk1LKeKYI3Xr8A2KmzHA0URFC1q6r40QuEYOy4YzAQStESbiBJs7O381LFMh0niZCUJ3TdHY3
	JLvSkxKxSyxvXLHBwpb/dFT3yW+BLmebkolva4SMhsI8gRXNWZCRbjXY7MKYMg+okjnhtLhwcZnYj
	rbGsbtgDGQJM+qjNa8lzzJ/yRlcplb4hqb3OdcfDrN8X8+V3/+aPfyNX/eZYXXp7k4q//7aYs+/vQ
	xml5ZVGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQw2k-00000005IDN-0nio;
	Wed, 11 Nov 2026 00:18:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQw2f-00000005ICu-2low
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 00:18:25 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AAMKjtU3592244
	for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 00:18:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6aqu2IFFdeNENdG4DQ1etmGb5Bfv2x2eRN8Su2kV72g=; b=G5MlFlj4VbgYpEP+
	MYK/WuLm932XQcq8O8hkH3Kk1kZdwESUM/Rc8pjvkoIpRue68MUBnLdnf2zvsio6
	bWfMCW8OHgUzNLbRMsr03ODBWHTWcyy3yeeypHFcjWO3vVoP6fx6u8tXBKnrZQx0
	Ta0Qa9ZK1f08r4XWgqjA7Umqrp0HbCQoOF2uf7EUox/LsRVW04zDT5OnqMN0vu5T
	f/tN81PZkqLffh00KCcVB91BDKyJKtYbJURGh+uY7wHD+LR0aGbgayZXHZs4wRht
	oKEwhe2Gzu+nCIHIu3vQyTAfXEWzXxucCpEVgmLdbb1IZoCon2XrtD9YjXZJWuSc
	4vU/oA==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hv7c5hn32-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 11 Nov 2026 00:18:19 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-36d1353fdcdso385408eec.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 16:18:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794356298; x=1794961098; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6aqu2IFFdeNENdG4DQ1etmGb5Bfv2x2eRN8Su2kV72g=;
        b=X65eAJ6lbSzobYR5u8oqj2I277VaOYfHHJZSVG3bPE4ruikNxu6+U1JEfC7A2NO0+v
         oiUTr6G5hDcbDLqS1LmQ5DUrCSeLmQ90krXiPsC9jLopXlY3usIXLNmL7fWL7tp7DdfA
         h6wQ6RXHbAIpjNa8nBs4nug6GLYdOJPEjUM5i3kCljWTr34LLTcXkO25hrilrPEdwis3
         QfKCuYI1SZKsFCMwXmd4ElV1NXs1x5501sdLq0c5oS3SRMFPt6wboRoLdt26aZ+bm4CH
         M3cys0yE91QtByZ4MER8LZkWnslBUnLE5Wi9+C20us6jDEphKWe78y5EsFI2SK4Ls5aU
         ymvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794356298; x=1794961098;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6aqu2IFFdeNENdG4DQ1etmGb5Bfv2x2eRN8Su2kV72g=;
        b=uB1yKB2mWQ14K+voOUINLOx3q5i33wRgeL/CRSz1dURUAJ2bHmgWXQ5VNvqAHiyzma
         fgyMRAtZwY9g+RxN4AqqODSBW11nRRW/wsr1K7XIuCHEWFpcvJy5kf6UvK7jBX9oZit7
         2Rt6ZA3Cq7VF1VaDCluyr03878/2OweZHfmSM3PFU/z4BL25p31OJJS+6rcYuWXP7mMM
         S0ByGwZtKcKC2io/iJnDJLCYqY3JrOz736DwrNadHEnzQpspQEsksjd6qiyLrHY+mG0w
         ZWt7N8xJnic+YV+icxFk04N0Jtqg3c3/KyE2pzE8TKhe+uLENN1VxVUE15y1rFzHHgrL
         9/aQ==
X-Forwarded-Encrypted: i=1; AL+hErFfZCzynUlq1QSwsgl7OeqCmov8hCSwlwIhJwfZmgX4rCEBxSchR4z/617onPFp1lGEp7rcnTObYEU=@lists.infradead.org
X-Gm-Message-State: APuU4Z9eCvdsZcEIeTbo+1wh1r2WfUeAx3yRPfklWusQiEB/Jc+onxer
	1Ve/FZMMQ8lJ97zBHIOCSOFti1f5fwASrnIDbMtUl/AOTE5SPhULHaNounpVp3f/21wM3/lIniN
	HiRZla05Eghrfpx3ZaxGhmCFJn3pfXOJIqksb81VlRuEp0aecacLBhPStgmTzycfhRdWV
X-Gm-Gg: AYBFou2S0F0ISaZNkWd1Xf2xknh5iHV4EVnU59Z/Qe7x4FBSCx1XMYxIpcX9kSjyKeL
	3NF2pffIELxDqE3eGxyLT0RaTg0ReiQBAPH0NX5x9iDHDmjmH+4iYRIVWDwhXVET+4JsYe0JRH2
	eKEiMSxBYc3SGnftcK1NBquYy+lPZfe/625lLl4HA7sSfTQlkZTj7OuBUEyLxgkFOCRX9VvrPoo
	IG7jxiBzisaMQXNcSBMDoojTf0FtB7EG01KDfgkm1mzs66x0gqK9JjoYUb3MpuGUEESWdBjXrDH
	JsKp7XoGjcKZXqvXQzmISM1VIaowJLRVDIswE9WFY5YXPWdrUmej50Lk3xTle/wBcpG8JJ3Xch6
	PKToZw3T4RHb0FB784u16IROxkZEJZ1KVLQSXEYXSJt4ujNWKNln2kdQLd9a7dFZ2A8qjqYat8E
	sDl83bLXZOATX7VQEktfOnv6Nm8gxCIoU=
X-Received: by 2002:a05:701b:451b:10b0:187:eb7f:bb4 with SMTP id a92af1059eb24-1b3c03847b4mr702357c88.46.1794356298322;
        Tue, 10 Nov 2026 16:18:18 -0800 (PST)
X-Received: by 2002:a05:701b:451b:10b0:187:eb7f:bb4 with SMTP id a92af1059eb24-1b3c03847b4mr702319c88.46.1794356297427;
        Tue, 10 Nov 2026 16:18:17 -0800 (PST)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b4b90csm9414671c88.14.2026.11.10.16.18.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 16:18:17 -0800 (PST)
Message-ID: <cd855aac-ceb5-4b11-803c-e3f4e4bbcd9b@oss.qualcomm.com>
Date: Tue, 10 Nov 2026 16:18:16 -0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] phy: qcom-mipi-csi2: Add support for single
 power-domain SoCs
To: bod@kernel.org
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20261102213936.1251316-1-anusha.nandi@oss.qualcomm.com>
 <179406008633.650304.8875272498498712274.b4-reply@b4>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <179406008633.650304.8875272498498712274.b4-reply@b4>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTExMDAwMCBTYWx0ZWRfX2DEFhf+vtcKy
 a8UwnYKkTD1OuaJqyf431aWW+FTWxJJdArOJx0pJsC+c8vnC99YhAmvLtz9AXjTVmydAQTjbBP2
 GlQlEy2YNZBSHBICg7lUFqGySZ5JW6tWnF/PEA3GlAGbnx4Mgxf1W1OdzLWdF7RstE9EQps+S+I
 JnWhFvZw4CtpRh7pW5bGu0BythGZddTuuc+s0MgPit3BXnCj9T+dMzgi3EXvrWYh2Z59UxwAIuf
 BQgJ3G+NeYV7UoQNxiBxvdnFkgHKKzbpsfg9tzL77VyE/HdufPHtorqcacyuZ5Y0fBQuwdGd8z4
 L58F4UmlimmK36Abw67x0J64/VNUoV7RC8l18Hw+584n0EP0JxERdfRvUKVpxxz/LxJbJiI8Ypd
 U9I0dJnhMpxjxxUstIMSl5ErgXZa0FL6yDrpmjY/nLWVq9+y1DrnC43w+NH+IaS50vXOIsbu5sS
 yfBlE7mqXIu2TzCP3vw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTExMDAwMCBTYWx0ZWRfX+DukOs2LG9MD
 0/KUevvTmuiUiQx5QSsxP86iHRH0TkO/BV24aJjz4RjY5MQKGc/RwAvVu04vxtZKm2q+li/5MeM
 +3YLqW0PwLk1ftRV0IFCWV2CHO0uHRg=
X-Proofpoint-ORIG-GUID: X0lkhT-iD2pGr3I57LUEq6yUl2vt2NRK
X-Authority-Analysis: v=2.4 cv=eq9KXYpX c=1 sm=1 tr=0 ts=6af3b44b cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=VYJ2NRu09T_4qfBsX9gA:9
 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: X0lkhT-iD2pGr3I57LUEq6yUl2vt2NRK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-10_07,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1015
 malwarescore=0 spamscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611110000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_161822_021111_76AFC2F7 
X-CRM114-Status: GOOD (  32.40  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/7/2026 6:01 AM, bod@kernel.org wrote:
> On 2026-11-02 13:39 -0800, Anusha Arun Nandi wrote:
>> sa8775p, qcs8300 and sc7280 each list exactly one power-domain ("top")
>> on the CSI2 PHY node. For a device with a single power-domain phandle,
>> the generic platform-bus code (platform_probe() ->
>> dev_pm_domain_attach()) auto-attaches it via genpd_dev_pm_attach()
>> before the driver's own probe() runs. phy_qcom_mipi_csi2_probe() then
>> unconditionally calls devm_pm_domain_attach_list(), which fails with
>> -EEXIST because dev->pm_domain is already set, and the driver treats
>> that as fatal:
>>
>>   1. qcom-mipi-csi2-phy ace6000.phy: error -EEXIST: Failed to attach
>>   power-domain list
>>   2. qcom-mipi-csi2-phy ace6000.phy: probe with driver qcom-mipi-csi2-phy
>>   failed with error -17
>>
>> x1e80100 is unaffected: it lists three power-domains, so the generic
>> code does not auto-attach any of them (auto-attach only applies to
>> single-power-domain devices); the driver's explicit attach is the
>> only one that runs.
>>
>> For the single power-domain case, call dev_pm_domain_attach() instead
>> of devm_pm_domain_attach_list(): it returns early when dev->pm_domain
>> is already set, so csi2phy->pd_list is left NULL rather than built up
>> by hand. The three call sites that walk pd_list for genpd
>> performance-state scaling now guard against a NULL pd_list, which is
>> harmless since scaling is unused (scaled = false) on every SoC that has
>> a single "top" domain.
>>
>> devm_pm_domain_attach_list() returns the number of attached
>> power-domains on success, so a bare "ret < 0" check in probe() is not
>> enough to catch the case where it succeeds without actually attaching
>> any domains. phy_qcom_mipi_csi2_attach_pm_domains() now also checks for
>> that case directly and reports -ENODEV, keeping probe()'s own check
>> unchanged.
>>
>> Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
>> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
>> ---
>>  .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    | 25 +++++++++++--------
>>  1 file changed, 15 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> index c0a4fa20eaf0..269232499fca 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> @@ -43,7 +43,7 @@ phy_qcom_mipi_csi2_set_clock_rates(struct mipi_csi2phy_device *csi2phy,
>>  	}
>>  
>>  	pstate = 0;
>> -	for (i = 0; i < csi2phy->pd_list->num_pds; i++) {
>> +	for (i = 0; csi2phy->pd_list && i < csi2phy->pd_list->num_pds; i++) {
>>  		unsigned int perf;
>>  
>>  		if (!csi2phy->soc_cfg->genpds[i].scaled)
>> @@ -174,7 +174,7 @@ static int phy_qcom_mipi_csi2_power_on(struct phy *phy)
>>  unset_rate:
>>  	dev_pm_opp_set_rate(csi2phy->dev, 0);
>>  
>> -	for (i = 0; i < csi2phy->pd_list->num_pds; i++) {
>> +	for (i = 0; csi2phy->pd_list && i < csi2phy->pd_list->num_pds; i++) {
>>  		if (!csi2phy->soc_cfg->genpds[i].scaled)
>>  			continue;
>>  
>> @@ -204,7 +204,7 @@ static int phy_qcom_mipi_csi2_power_off(struct phy *phy)
>>  
>>  	dev_pm_opp_set_rate(csi2phy->dev, 0);
>>  
>> -	for (i = 0; i < csi2phy->pd_list->num_pds; i++) {
>> +	for (i = 0; csi2phy->pd_list && i < csi2phy->pd_list->num_pds; i++) {
>>  		if (!csi2phy->soc_cfg->genpds[i].scaled)
>>  			continue;
>>  
>> @@ -231,7 +231,11 @@ static int phy_qcom_mipi_csi2_attach_pm_domains(struct mipi_csi2phy_device *csi2
>>  {
>>  	struct dev_pm_domain_attach_data pd_data = { 0 };
>>  	const char **pd_names;
>> -	int i;
>> +	int i, ret;
>> +
>> +	/* Single power-domain devices are already attached by the bus core. */
>> +	if (csi2phy->soc_cfg->num_genpds == 1)
>> +		return dev_pm_domain_attach(csi2phy->dev, 0);
>>  
>>  	pd_names = devm_kzalloc(csi2phy->dev,
>>  				sizeof(char *) * csi2phy->soc_cfg->num_genpds,
>> @@ -245,8 +249,12 @@ static int phy_qcom_mipi_csi2_attach_pm_domains(struct mipi_csi2phy_device *csi2
>>  	pd_data.pd_names = pd_names;
>>  	pd_data.num_pd_names = csi2phy->soc_cfg->num_genpds;
>>  
>> -	return devm_pm_domain_attach_list(csi2phy->dev, &pd_data,
>> -					  &csi2phy->pd_list);
>> +	ret = devm_pm_domain_attach_list(csi2phy->dev, &pd_data,
>> +					 &csi2phy->pd_list);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	return 0;
>>  }
>>  
>>  static int phy_qcom_mipi_csi2_parse_routing(struct mipi_csi2phy_device *csi2phy)
>> @@ -369,11 +377,8 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
>>  		return ret;
>>  
>>  	ret = phy_qcom_mipi_csi2_attach_pm_domains(csi2phy);
>> -	if (ret < 0 || csi2phy->pd_list == NULL) {
>> -		if (ret == 0)
>> -			ret = -ENODEV;
>> +	if (ret < 0)
> 
> I thought you said you were going to fix this ?
> 
> Once done you may add
> 
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> But not until ;)

I went back and took a closer look at this than I did when I replied
with "Applied" earlier, and I now think I may have agreed a bit too quickly.

Looking at the actual implementation of dev_pm_domain_attach_list(), it
appears to have only three possible outcomes:

1. A negative errno on any failure path (-ENOMEM, -EEXIST, or a failure
from dev_pm_domain_attach_by_name() propagated via err_attach/err_link).
2. A positive return value equal to num_pds on success. In that case
*list = pds is assigned in the same success path that returns num_pds,
so a non-NULL pd_list and a positive return always occur together.
3. 0, but only from two early-return cases before *list is ever touched:
 a. if (!np) return 0;
 b. if (num_pds <= 0) return 0;

As far as I can tell, neither of those 0 return paths is reachable here.

The !np case doesn't seem applicable because this driver only supports
DT systems through its of_match_table; there is no ACPI path, so
dev->of_node should be present when probe() runs.

Likewise, num_pds <= 0 doesn't appear possible. We only enter this
branch when num_genpds != 1, and num_genpds comes from the SoC's static
soc_cfg data (for example, x1e80100 uses 3). It isn't runtime-controlled
and isn't expected to be zero by construction.

Given those constraints, ret < 0 and pd_list == NULL seem to collapse to
the same condition at this call site. That's what led me to revisit my
earlier agreement: I no longer see a path where the NULL check provides
additional protection beyond the return-value check. To me, this looks
more like dead code than a safety net, although I'm happy to hear if
there's a scenario I've overlooked.

Best regards,
Anusha

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
